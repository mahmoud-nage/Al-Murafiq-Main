<?php

namespace App\Nova;

use Laravel\Nova\Fields\HasOne;
use Laravel\Nova\Fields\ID;
use Illuminate\Http\Request;
use Laravel\Nova\Fields\Date;
use Laravel\Nova\Fields\Number;
use Laravel\Nova\Fields\BelongsTo;

class CompanySubsription extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\General\CampanySubsriptions::class;

    /**
     * The single value that should be used to represent the resource when being displayed.
     *
     * @var string
     */
    public static $title = 'id';
    public static $group = 'Relations';
    public static $displayInNavigation = false;
    public static function label()
    {
        return __('Subscription'); // TODO: Change the autogenerated stub
    }

    public function title()
    {
        return $this->subscription['name_' . app()->getLocale()]; // TODO: Change the autogenerated stub
    }


    /**
     * The columns that should be searched.
     *
     * @var array
     */
    public static $search = [
        'id',
    ];

    /**
     * Get the fields displayed by the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function fields(Request $request)
    {
        return [
            ID::make(__('ID'), 'id')->sortable(),
            BelongsTo::make('Company', 'company', 'App\Nova\Company')->rules('required'),
            BelongsTo::make('Subscription', 'subscription', 'App\Nova\Subscription')->rules('required'),
            Date::make(__('from'),'from')
                ->creationRules('required', 'after_or_equal:today')
                ->default(today()),
            Date::make(__('to'),'to')->hideWhenCreating(),
            Number::make(__('price'),'price')->hideWhenCreating(),
            Number::make('# Of Slider Show In Ad', 'slider_num')->hideWhenCreating(),
            Number::make('# Of Banner Show In Ad', 'banner_num')->hideWhenCreating(),

            HasOne::make('Payment', 'payment', 'App\Nova\Payment'),
        ];
    }

    /**
     * Get the cards available for the request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function cards(Request $request)
    {
        return [];
    }

    /**
     * Get the filters available for the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function filters(Request $request)
    {
        return [];
    }

    /**
     * Get the lenses available for the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function lenses(Request $request)
    {
        return [];
    }

    /**
     * Get the actions available for the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function actions(Request $request)
    {
        return [];
    }
}
