<?php

namespace App\Http\Controllers\API;

use App\General\Ad;
use App\Company\Company;
use App\General\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use App\General\BusinessSettings;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class CompanyController extends Controller
{
    private $setting;

    public function __construct()
    {
        $this->setting = BusinessSettings::all();
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index(Request $request)
    {

        $lang = 'ar';
        if (!is_null($request->header('lang'))) {
            $lang = $request->header('lang');
        }

        $search_count = $this->setting->where('type', 'search_count')->first();
        $search_count = $search_count ? $search_count->value : 9;
        if ($request->has('category_id') && $request->category_id) {
            $cat = Category::find($request->category_id);
            if ($cat) {
                $records = $cat->companiesBySub()
                    ->where('country_id', auth()->user()->country_id)
                    ->with('city:id,name_' . $lang . ' as name')
                    ->select('id', 'name_' . $lang . ' as name', 'desc_' . $lang . ' as desc', 'image', 'total_rating', 'city_id', 'lat', 'lon')
                    ->paginate($search_count);
            }
        } else {
            $records = Company::where('country_id', auth()->user()->country_id)
                ->with('city:id,name_' . $lang . ' as name')
                ->select('id', 'name_' . $lang . ' as name', 'desc_' . $lang . ' as desc', 'image', 'total_rating', 'city_id', 'lat', 'lon')
                ->paginate($search_count);
        }
        if ($records) {
            foreach ($records as $record) {
                $record->distance = '12 kilo';
                $record->desc = strip_tags($record->desc);
            }
            return response()->json(['status' => 200, 'data' => $records], 200);
        }
        return response()->json(['status' => 400, 'message' => __('messages.no_data')], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return Response
     */
    public function show(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:companies,id',
        ]);

        if ($validator->fails()) {
            return response()->json(['status' => 500, 'error' => __('messages.validate_error'), 'message' => $validator->messages()], 200);
        }

        $lang = 'ar';
        if (!is_null($request->header('lang'))) {
            $lang = $request->header('lang');
        }

        if ($request->has('ad_id') && $request->ad_id) {
            Ad::find($request->ad_id)->increment('visit_count');
        }

        $record = Company::with(['reviews' => function ($q) {
            $q->where('active', 1);
        }, 'social' => function ($q) {
            $q->where('active', 1)->select('link','icon_type','socialable_id','socialable_type');
        }])->find($request->id);

        $record->increment('visit_count');
        if ($record) {
            $record->name = $record['name_'.$lang];
            $record->address = $record['address_'.$lang];
            $record->desc = strip_tags($record['desc_'.$lang]);
            return response()->json(['status' => 200, 'data' => $record], 200);
        }
        return response()->json(['status' => 400, 'message' => __('messages.no_data')], 200);
    }

    public function ads(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:companies,id',
        ]);
        if ($validator->fails()) {
            return response()->json(['status' => 500, 'error' => __('messages.validate_error'), 'message' => $validator->messages()], 200);
        }

        $record = auth()->user()->userable()->with('ads', 'user')->find($request->id);
        if (count($record->ads) > 0) {
            return response()->json(['status' => 200, 'data' => $record], 200);
        }
        return response()->json(['status' => 400, 'message' => __('messages.no_data')], 200);
    }

    public function subscriptions(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:companies,id',
        ]);
        if ($validator->fails()) {
            return response()->json(['status' => 500, 'error' => __('messages.validate_error'), 'message' => $validator->messages()], 200);
        }

        $record = auth()->user()->userable()->with('Subscriptions', 'user')->find($request->id);
        if (count($record->Subscriptions) > 0) {
//            foreach ($record->CompanySubsriptions as $CompanySubsription) {
//                $data[] = [
//                    'price' => $CompanySubsription->price,
//                    'from' => date('d-m-y', strtotime($CompanySubsription->from)),
//                    'to' => date('d-m-y', strtotime($CompanySubsription->to)),
//                    // 'days' => $days,
//                    'slider_num' => $CompanySubsription->slider_num,
//                    'banner_num' => $CompanySubsription->banner_num,
//                    'name_en' => $CompanySubsription->subscription->name_en,
//                    'name_ar' => $CompanySubsription->subscription->name_ar,
//                ];
//            }
            return response()->json(['status' => 200, 'data' => $record], 200);
        }
        return response()->json(['status' => 400, 'message' => __('messages.no_data')], 200);
    }

    public function categories(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:companies,id',
        ]);
        if ($validator->fails()) {
            return response()->json(['status' => 500, 'error' => __('messages.validate_error'), 'message' => $validator->messages()], 200);
        }

        $record = auth()->user()->userable()->with('categories', 'user')->find($request->id);
        if (count($record->categories) > 0) {
//            foreach ($record->CompanySubsriptions as $CompanySubsription) {
//                $data[] = [
//                    'price' => $CompanySubsription->price,
//                    'from' => date('d-m-y', strtotime($CompanySubsription->from)),
//                    'to' => date('d-m-y', strtotime($CompanySubsription->to)),
//                    // 'days' => $days,
//                    'slider_num' => $CompanySubsription->slider_num,
//                    'banner_num' => $CompanySubsription->banner_num,
//                    'name_en' => $CompanySubsription->subscription->name_en,
//                    'name_ar' => $CompanySubsription->subscription->name_ar,
//                ];
//            }
            return response()->json(['status' => 200, 'data' => $record], 200);
        }
        return response()->json(['status' => 400, 'message' => __('messages.no_data')], 200);
    }

    public function payments(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:companies,id',
        ]);
        if ($validator->fails()) {
            return response()->json(['status' => 500, 'error' => __('messages.validate_error'), 'message' => $validator->messages()], 200);
        }

        $record = auth()->user()->userable()->with('payments', 'user')->find($request->id);
        if (count($record->payments) > 0) {
//            foreach ($record->CompanySubsriptions as $CompanySubsription) {
//                $data[] = [
//                    'price' => $CompanySubsription->price,
//                    'from' => date('d-m-y', strtotime($CompanySubsription->from)),
//                    'to' => date('d-m-y', strtotime($CompanySubsription->to)),
//                    // 'days' => $days,
//                    'slider_num' => $CompanySubsription->slider_num,
//                    'banner_num' => $CompanySubsription->banner_num,
//                    'name_en' => $CompanySubsription->subscription->name_en,
//                    'name_ar' => $CompanySubsription->subscription->name_ar,
//                ];
//            }
            return response()->json(['status' => 200, 'data' => $record], 200);
        }
        return response()->json(['status' => 400, 'message' => __('messages.no_data')], 200);
    }

    public function requestSpecialAdd(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id' => 'required|exists:companies,id',
        ]);

        if ($validator->fails()) {
            return response()->json(['status' => 500, 'error' => __('messages.validate_error'), 'message' => $validator->messages()], 200);
        }

        $record = auth()->user()->userable()->find($request->id);

        if ($record->CompanySubsriptions) {
            return response()->json(['status' => 200, 'data' => $record->CompanySubsriptions], 200);
        }

        return response()->json(['status' => 400, 'message' => __('messages.no_data')], 200);
    }

    public function newBranch(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'company_id' => 'required|exists:companies,id',
            'name_ar' => 'required',
            'name_en' => 'required',
            'desc_ar' => 'required',
            'desc_en' => 'required',
            'address_ar' => 'required',
            'address_en' => 'required',
//            'open_from' => 'required|date',
//            'open_to' => 'required|date',
            'phone1' => 'required',
            'holiday' => 'required',
//            'image' => 'required|mimes:jpg,jpeg,png,tiff,gif',
            // 'pdf' => 'mimes:pdf',
            'email' => 'string|email|max:191',
            'country_id' => 'required|exists:countries,id',
            'city_id' => 'required|exists:cities,id',
//            'area_id' => 'required|exists:areas,id',
//            'zone_id' => 'required|exists:zones,id',
        ]);

        if ($validator->fails()) {
            return response()->json(['status' => 500, 'error' => __('messages.validate_error'), 'message' => $validator->messages()], 200);
        }

        $company = auth()->user()->userable()->find($request->company_id);
        if ($company) {
            $record = $company->branches()->create([
                'name_ar' => $request->name_ar,
                'name_en' => $request->name_en,
                'desc_ar' => $request->desc_ar,
                'desc_en' => $request->desc_en,
                'address_ar' => $request->address_ar,
                'address_en' => $request->address_en,
                'open_from' => $request->open_from,
                'open_to' => $request->open_to,
                'phone1' => $request->phone1,
                'holiday' => $request->holiday,
                'email' => $request->email,
                'closed_reason' => $request->closed_reason,
                'parent_id' => $company->id,
                'phone2' => $request->phone2,
                'tel' => $request->tel,
                'fax' => $request->fax,
//                'facebook' => $request->facebook,
//                'instagram' => $request->instagram,
//                'twitter' => $request->twitter,
//                'snapshat' => $request->snapshat,
//                'whatsapp' => $request->whatsapp,
//                'googleplus' => $request->googleplus,
//                'linked_in' => $request->linked_in,
//                'website' => $request->website,
                'lat' => $request->lat,
                'lon' => $request->lon,
                'app' => 1,
                'country_id' => $request->country_id,
                'city_id' => $request->city_id,
                'area_id' => $request->area_id,
                'zone_id' => $request->zone_id,
            ]);

            if ($request->hasFile('image')) {
                $path = 'uploads/companies/image';
                $name = webpUploadImage($request->image, $path);
                $record->image = $name;
                $record->save();
            }
            if ($request->hasFile('pdf')) {
                $path = 'uploads/companies/pdf';
                $name = webpUploadImage($request->avatar, $path);
                $record->pdf = $name;
                $record->save();
            }
            $company->increment('branch_num');
            return response()->json(['status' => 200, 'message' => __('messages.success_branch')], 200);
        }
        return response()->json(['status' => 400, 'message' => __('messages.wrong')], 200);
    }

    public function branches(Request $request)
    {
        $records = auth()->user()->userable()->with('branches')->find($request->id);
        if ($records) {
            return response()->json(['status' => 200, 'data' => $records], 200);
        }
        return response()->json(['status' => 400, 'message' => __('messages.wrong')], 200);
    }
}
