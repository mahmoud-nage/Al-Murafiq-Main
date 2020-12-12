<?php

namespace App\Http\Controllers\API;

use App\General\Ad;
use App\Language;
use App\General\Policy;
use App\General\Review;
use App\General\Search;
use App\Company\Company;
use App\General\AboutUs;
use App\General\Category;
use Illuminate\Http\Request;
use App\General\BusinessSettings;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class HomeController extends Controller
{
    private $setting;

    public function __construct()
    {
        $this->setting = BusinessSettings::all();
    }

    public function index(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'country_id' => 'required|exists:countries,id',
        ]);

        if ($validator->fails()) {
            return response()->json(['status' => 500, 'error' => __('messages.validate_error'), 'message' => $validator->messages()], 200);
        }


        $lang = 'ar';
        if (!is_null($request->header('lang'))) {
            $lang = $request->header('lang');
        }

        $slider = [];
        $banner = [];

        $cat_count = $this->setting->where('type', 'home_category_count')->first();
        $review_count = $this->setting->where('type', 'home_reviews_count')->first();
        $latest_count = $this->setting->where('type', 'home_latest_company_count')->first();

        $review_count = $review_count ? $review_count->value : 2;
        $cat_count = $cat_count ? $cat_count->value : 2;
        $latest_count = $latest_count ? $latest_count->value : 2;

        $ads = Ad::with('company')->where('ad_location', 'home')->where('top', 0)->where('to', '>=', today())->inRandomOrder()->get();
        if ($ads->count() > 0) {
            $slider = $ads->where('type', 'slider')->take(2);
            $banner = $ads->where('type', 'banner')->where('top', 0)->take(1);
        }
        $reviews = Review::with('user')->inRandomOrder()->where('active', 1)->where('in_home', 1)->take($review_count)->get();
        $cats = Category::where('parent_id', 0)->where('active', 1)->where('in_home', 1)->take($cat_count)->select('name_' . app()->getLocale() . ' as name', 'id')->get();
        $latest = Company::where('parent_id', 0)->where('active', 1)->latest()->take($latest_count)->select('id', 'name_' . app()->getLocale() . ' as name', 'desc_' . app()->getLocale() . ' as desc', 'total_rating', 'image')->get();

        $data = [
            'slider' => $slider,
            'banner' => $banner,
            'categories' => $cats,
            'reviews' => $reviews,
            'latest_companies' => $latest,
        ];
        return response()->json(['status' => 200, 'data' => $data], 200);
    }

    public function search(Request $request)
    {
        $search_count = $this->setting->where('type', 'search_count')->first();
        $search_count = $search_count ? $search_count->value : 9;

        $lang = 'ar';
        if (!is_null($request->header('lang'))) {
            $lang = $request->header('lang');
        }

        $conditions = ['active' => 1];
        if ($request->has('country_id') && $request->input('country_id')) {
            $conditions = array_merge($conditions, ['country_id' => $request->input('country_id')]);
        }
        if ($request->has('city_id') && $request->input('city_id')) {
            $conditions = array_merge($conditions, ['city_id' => $request->input('city_id')]);
        }
        if ($request->has('area_id') && $request->input('area_id')) {
            $conditions = array_merge($conditions, ['area_id' => $request->input('area_id')]);
        }
        if ($request->has('zone_id') && $request->input('zone_id')) {
            $conditions = array_merge($conditions, ['zone_id' => $request->input('zone_id')]);
        }

        if ($request->has('category_id') && $request->input('category_id')) {
            $conditions = array_merge($conditions, ['category_id' => $request->input('category_id')]);
        }

        $query = $request->input('query');
        if ($request->has('query') && $query) {
            $search = Search::where('query', $query)->first();
            if ($search) {
                $search->increment('count');
            } else {
                $searchController = Search::create([
                    'query' => $query,
                ]);
            }
            $companies = Company::where('name_en', 'like', '%' . $query . '%')->orWhere('name_ar', 'like', '%' . $query . '%')->where($conditions)->paginate($search_count);
        } else {
            $companies = Company::where($conditions)->paginate($search_count);
        }

        if ($companies->count() > 0) {
            return response()->json(['status' => 200, 'data' => $companies], 200);
        }
        return response()->json(['status' => 400, 'message' => __('messages.no_data')], 200);
    }

    public function policies()
    {
        $records = Policy::where('active', 1)->get();
        if ($records->count() > 0) {
            return response()->json(['status' => 200, 'data' => $records], 200);
        }
        return response()->json(['status' => 400, 'message' => __('messages.no_data')], 200);
    }

    public function aboutUs()
    {
        $record = AboutUs::where('active', 1)->where('in_home', 1)->first();
        if ($record) {
            return response()->json(['status' => 200, 'data' => $record], 200);
        }
        return response()->json(['status' => 400, 'message' => __('messages.no_data')], 200);
    }

    public function specialAds()
    {
        $slider_count = $this->setting->where('type', 'special_ads_slider_count')->first();
        $slider_count = $slider_count ? $slider_count->value : 3;
        $banner_count = $this->setting->where('type', 'banner_ads_slider_count')->first();
        $banner_count = $banner_count ? $banner_count->value : 4;
        $ads = Ad::with('company')->where('ad_location', 'home')->where('to', '>=', today())->where('top', 1)->get();
        if ($ads->count() > 0) {
            $slider = $ads->where('type', 'slider')->take($slider_count);
            $banner = $ads->where('type', 'banner')->take($banner_count);
            $data = [
                'slider' => $slider,
                'banner' => $banner,
            ];
            return response()->json(['status' => 200, 'data' => $data], 200);
        }
        return response()->json(['status' => 400, 'message' => __('messages.no_data')], 200);
    }

    public function languages(Request $request)
    {

        $lang = 'ar';
        if (!is_null($request->header('lang'))) {
            $lang = $request->header('lang');
        }

        $languages = Language::where('active', 1)->select('id', 'default', 'name_' . $lang . ' as name')->get();

        if ($languages->count() > 0) {
            return response()->json(['status' => 200, 'data' => $languages], 200);
        }
        return response()->json(['status' => 400, 'message' => __('messages.no_data')], 200);
    }
}
