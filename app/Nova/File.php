<?php

namespace App\Nova;

use Brick\Math\BigInteger;
use Brick\Math\BigNumber;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Fields\Image;
use Laravel\Nova\Fields\MorphTo;
use Laravel\Nova\Fields\Number;
use Laravel\Nova\Fields\Select;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Http\Requests\NovaRequest;

class File extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\General\File::class;

    /**
     * The single value that should be used to represent the resource when being displayed.
     *
     * @var string
     */
    public static $title = 'id';
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

            MorphTo::make('fileable')->types([
                Blog::class,
                AboutUs::class,
                Category::class,
                Payment::class,
                Policy::class,
                Company::class,
            ]),

            Image::make(__('image'), 'source')
                ->disk('Root')
                ->store(function (Request $request, $model) {
                    $filename = Str::random(50) . '.' . $request->source->getClientOriginalExtension();
                    $request->source->move(public_path('/uploads/files/'), $filename);
                    return [
                        'source' => '/uploads/files/' . $filename,
                    ];
                })
                ->prunable()
                ->creationRules('required', 'image', 'mimes:png,jpeg,jpg,gif')
                ->updateRules('image', 'mimes:png,jpeg,jpg,gif'),

            Select::make(__('type'), 'type')->options([
                'image' => __('image'),
                'pdf' => __('pdf')
            ])->default('image'),
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
