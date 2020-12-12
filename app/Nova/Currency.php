<?php

namespace App\Nova;

use Illuminate\Http\Request;
use Laravel\Nova\Fields\Boolean;
use Laravel\Nova\Fields\HasOne;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Fields\Number;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Http\Requests\NovaRequest;

class Currency extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\General\Currency::class;

    /**
     * The single value that should be used to represent the resource when being displayed.
     *
     * @var string
     */
    public static $title = 'name_en';
    public static $group = 'Governorate';
    public static $displayInNavigation = false;



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

            Text::make('Name Arabic','name_ar')
                ->rules('required', 'max:190')
                ->sortable(),
            Text::make('Name English','name_en')
                ->rules('required', 'max:190')
                ->sortable(),
            Text::make('symbol')
                ->rules('required', 'max:190')
                ->sortable(),
            Text::make('Country Code','country_code')
                ->rules('required', 'max:190')
                ->sortable(),
            Text::make('Country Name','country_name')
                ->rules('required', 'max:190')
                ->sortable(),
            Text::make('Dial Code','dial_code')
                ->rules('required', 'max:190')
                ->sortable(),

            Number::make('Size Phone','size_phone')
                ->rules('required')
                ->sortable(),
            Number::make('Exchange Rate','exchange_rate')
                ->rules('required')
                ->default(1)
                ->step(0.0000001)
                ->sortable(),
            Number::make('Exchange Rate USD','exchange_rate_usd')
                ->rules('required')
                ->default(1)
                ->step(0.0000001)
                ->sortable(),

            Boolean::make('active')->trueValue(1)->falseValue(0)->sortable()->default(1),
            Boolean::make('Default Currency','default')->trueValue(1)->falseValue(0)->sortable()->default(0),

            HasOne::make('country')
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
