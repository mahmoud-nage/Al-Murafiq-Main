<?php

namespace App\Nova;

use Laravel\Nova\Panel;
use Illuminate\Support\Str;
use Laravel\Nova\Fields\ID;
use Illuminate\Http\Request;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Fields\Image;
use Laravel\Nova\Fields\Number;
use Yassi\NestedForm\NestedForm;
use Laravel\Nova\Fields\MorphOne;
use Laravel\Nova\Fields\BelongsToMany;
use Laravel\Nova\Fields\MorphTo;
use Laravel\Nova\Http\Requests\NovaRequest;

class Affilate extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\Affilate\Affilate::class;

    /**
     * The single value that should be used to represent the resource when being displayed.
     *
     * @var string
     */
    public static $title = 'id';
    public static $group = 'Users';
    public static $priority = 2;
    public static function group()
    {
        return __('users'); // TODO: Change the autogenerated stub
    }

    public static function label()
    {
        return __('marketers'); // TODO: Change the autogenerated stub
    }


    /**
     * The columns that should be searched.
     *
     * @var array
     */
    public static $search = [
        'id', 'ssd', 'code'
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
            ID::make(__('ID'), 'id')->sortable()->onlyOnForms(),
            Text::make(__('personal_id'), 'code')->sortable()->rules('unique:affilates,code,' . $this->id),
            new Panel(__('personal_info'), $this->personalInfo()),
            new Panel(__('marketer_info'), $this->marketerInfo()),
            new Panel(__('user_profile'), $this->userInfo()),
            BelongsToMany::make(__('companies'),'companies', Company::class),
        ];
    }


    public function UserInfo()
    {
        return [
            MorphTo::make(__('user'),'user',User::class),
        ];
    }

    public function marketerInfo()
    {
        return [
            Text::make(__('verify_code'), 'ssd')->default(uniqid())->sortable()->exceptOnForms(),
            Number::make(__('total_companies'), 'total_companies')->default(0)->sortable()->exceptOnForms(),
            Number::make(__('points'), 'points')->default(0)->sortable()->exceptOnForms(),
        ];
    }

    public function personalInfo()
    {
        return [
            Image::make(__('avatar'), function () {
                return $this->getAvatar();
            })->disk('Root')->sortable(),

            Text::make(__('name'), function () {
                return $this->getName();
            })->sortable(),
            Text::make(__('phone'), function () {
                return $this->getPhone();
            })->sortable(),
            Text::make(__('email'), function () {
                return $this->getMail();
            })->sortable(),
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
