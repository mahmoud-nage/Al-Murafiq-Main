<?php

namespace App\Nova;

use App\Nova\Resource;
use Illuminate\Support\Str;
use Laravel\Nova\Fields\ID;
use App\Nova\Actions\Active;
use App\Nova\Filters\DateTo;
use Illuminate\Http\Request;
use Laravel\Nova\Fields\Text;
use App\Nova\Actions\Deactive;
use App\Nova\Actions\HideHome;
use App\Nova\Actions\ShowHome;
use App\Nova\Filters\DateFrom;
use Laravel\Nova\Fields\Hidden;
use Laravel\Nova\Fields\Select;
use Laravel\Nova\Fields\Boolean;
use Laravel\Nova\Fields\BelongsTo;
use Laravel\Nova\Http\Requests\NovaRequest;

class SubSubCategory extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\General\Category::class;

    public static function indexQuery(NovaRequest $request, $query)
    {
        return $query->where('type', 2); // TODO: Change the autogenerated stub
    }

    /**
     * The single value that should be used to represent the resource when being displayed.
     *
     * @var string
     */
    public static $title = 'name_en';
    public static $group = 'Categories';
    public static $priority = 3;
    public static $displayInNavigation = false;


    public static function group()
    {
        return __('categories'); // TODO: Change the autogenerated stub
    }

    public static function label()
    {
        return __('SubSubCategory'); // TODO: Change the autogenerated stub
    }

    public function title()
    {
        return $this['name_' . app()->getLocale()]; // TODO: Change the autogenerated stub
    }


    /**
     * The columns that should be searched.
     *
     * @var array
     */
    public static $search = [
        'id', 'name_en', 'name_ar', 'active'
    ];

    /**
     * Get the fields displayed by the resource.
     *
     * @param \Illuminate\Http\Request $request
     * @return array
     */
    public function fields(Request $request)
    {
        return [
            ID::make(__('ID'), 'id')->sortable(),

            Text::make(__('name_ar'), 'name_ar')
                ->rules('nullable', 'max:190')
                ->sortable(),
            Text::make(__('name_en'), 'name_en')
                ->rules('required', 'max:190')
                ->sortable(),
            Hidden::make('slug')->default(Str::random(6))->sortable(),
            Hidden::make(__('type'), 'type')->default(2),
            BelongsTo::make(__('Parent Sub Category'), 'subCategory', SubCategory::class),
            Boolean::make(__('active'), 'active')->trueValue(1)->falseValue(0)->sortable()->default(1),
        ];
    }

    /**
     * Get the cards available for the request.
     *
     * @param \Illuminate\Http\Request $request
     * @return array
     */
    public function cards(Request $request)
    {
        return [];
    }

    /**
     * Get the filters available for the resource.
     *
     * @param \Illuminate\Http\Request $request
     * @return array
     */
    public function filters(Request $request)
    {
        return [
            new DateFrom,
            new DateTo,
        ];
    }

    /**
     * Get the lenses available for the resource.
     *
     * @param \Illuminate\Http\Request $request
     * @return array
     */
    public function lenses(Request $request)
    {
        return [];
    }

    /**
     * Get the actions available for the resource.
     *
     * @param \Illuminate\Http\Request $request
     * @return array
     */
    public function actions(Request $request)
    {
        return [
            (new Active)->confirmText(__('Are you sure you want to activate this user?'))
                ->confirmButtonText(__('Activate'))
                ->cancelButtonText(__("Don't activate")),
            (new Deactive)->confirmText(__('Are you sure you want to Deactivate this user?'))
                ->confirmButtonText(__('DeActivate'))
                ->cancelButtonText(__("Don't deactivate")),
        ];
    }
}
