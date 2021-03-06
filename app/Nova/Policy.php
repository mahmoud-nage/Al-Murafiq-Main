<?php

namespace App\Nova;

use Laravel\Nova\Fields\ID;
use App\Nova\Actions\Active;
use Illuminate\Http\Request;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Fields\Trix;
use App\Nova\Actions\Deactive;
use Laravel\Nova\Fields\Select;
use Laravel\Nova\Fields\Boolean;
use Laravel\Nova\Fields\MorphOne;
use Laravel\Nova\Fields\MorphMany;
use Laravel\Nova\Http\Requests\NovaRequest;

class Policy extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\General\Policy::class;

    /**
     * The single value that should be used to represent the resource when being displayed.
     *
     * @var string
     */
    public static $title = 'name_en';
    public static $group = 'Website';

    public static function group()
    {
        return __('website'); // TODO: Change the autogenerated stub
    }
    public static function label()
    {
        return __('Policies'); // TODO: Change the autogenerated stub
    }
    public function title()
    {
        return $this['name_' . app()->getLocale()]; // TODO: Change the autogenerated stub
    }
    public function subtitle()
    {
        return "Description: " . $this['desc_' . app()->getLocale()];
    }

    /**
     * The columns that should be searched.
     *
     * @var array
     */
    public static $search = [
        'id','name_ar','name_en','desc_ar','desc_en','type','active'
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
            Trix::make(__('desc_ar'), 'desc_ar')->rules('nullable'),
            Trix::make(__('desc_en'), 'desc_en')->rules('required'),
            Select::make(__('type'), 'type')->options([
                'General' => __('General'),
                'Marketer' => __('Affilate'),
                'Company' => __('Company'),
                'Customer' => __('Customer')
            ]),
            Boolean::make(__('active'),'active')->trueValue(1)->falseValue(0)->sortable()->default(1),
            MorphOne::make(__('file'),'file', File::class),
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
        return [];
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
