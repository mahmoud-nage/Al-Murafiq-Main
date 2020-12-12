<?php

namespace App\Nova;

use Illuminate\Support\Str;
use Laravel\Nova\Fields\ID;
use App\Nova\Actions\Active;
use Illuminate\Http\Request;
use Laravel\Nova\Fields\Date;
use Laravel\Nova\Fields\KeyValue;
use Laravel\Nova\Fields\Place;
use Laravel\Nova\Fields\Text;
use App\Nova\Actions\Deactive;
use Laravel\Nova\Fields\Image;
use Laravel\Nova\Fields\Select;
use Laravel\Nova\Fields\Boolean;
use Laravel\Nova\Fields\HasMany;
use Laravel\Nova\Fields\MorphTo;
use Laravel\Nova\Fields\Gravatar;
use Laravel\Nova\Fields\Password;
use Laravel\Nova\Fields\BelongsTo;
use Laravel\Nova\Fields\MorphToMany;
use Manmohanjit\BelongsToDependency\BelongsToDependency;

class User extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\User::class;

    /**
     * The single value that should be used to represent the resource when being displayed.
     *
     * @var string
     */
    public static $title = 'name';
    public static $group = 'Users';
    public static $displayInNavigation = false;


    /**
     * The columns that should be searched.
     *
     * @var array
     */
    public static $search = [
        'id', 'name', 'email','phone','gender'
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
            ID::make()->sortable(),

            MorphTo::make('userable')->types([
                Admin::class,
                Affilate::class,
                Company::class,
                Customer::class,
            ])->readonly(),

            Gravatar::make('avatar', 'email')->maxWidth(50),

            Text::make(__('name'), 'name')
                ->sortable()
                ->rules('required', 'max:191'),

            Text::make(__('email'),'email')
                ->sortable()
                ->rules('required', 'email', 'max:191')
                ->creationRules('unique:users,email')
                ->updateRules('unique:users,email,{{resourceId}}'),

            Password::make(__('password'),'password')
                ->onlyOnForms()
                ->creationRules('required', 'string', 'min:8')
                ->updateRules('nullable', 'string', 'min:8')->onlyOnForms(),

            Text::make(__('provider'),'provider')
                ->sortable()
                ->rules('max:191')->onlyOnDetail(),
            Text::make(__('provider_id'),'provider_id')
                ->sortable()
                ->rules('max:191')->onlyOnDetail(),

            Image::make(__('avatar'), 'avatar')
                ->disk('Root')
                ->store(function (Request $request, $model) {
                    $filename = Str::random(50) . '.' . $request->avatar->getClientOriginalExtension();
                    $request->avatar->move(public_path('/uploads/users/'), $filename);
                    return [
                        'avatar' => '/uploads/users/' . $filename,
                    ];
                })
                ->prunable()
                ->creationRules('image', 'mimes:png,jpeg,jpg,gif')
                ->updateRules('image', 'mimes:png,jpeg,jpg,gif')->hideFromIndex(),

            Date::make(__('birth_date'),'birth_date')
                ->sortable()->hideFromIndex(),

            Select::make(__('gender'),'gender')->options([
                'Male' => __('Male'),
                'Female' => __('Female')
            ])->hideFromIndex(),

            Select::make(__('default_lang'),'default_lang')->options(function(){
                return \App\Language::pluck( 'name_'.app()->getLocale(), 'language');
            })->searchable()->hideFromIndex()->default('ar'),

            Text::make(__('phone'),'phone')
                ->sortable(),

            BelongsTo::make(__('country'), 'country', Country::class)->default(function() {
                    if(\App\General\Country::where('default', 1)->count() > 0){
                        return \App\General\Country::where('default', 1)->first()->id;
                    }
                    return \App\General\Country::first()->id;
                })->nullable(),

                BelongsToDependency::make(__('city'),'city', City::class)->dependsOn('country', 'country_id')
                ->nullable(),

//                BelongsToDependency::make(__('area'),'area', Area::class)->dependsOn('city', 'city_id')
//                ->nullable(),
//
//                BelongsToDependency::make(__('zone'),'zone', Zone::class)->dependsOn('area', 'area_id')
//                ->nullable(),


            Text::make(__('reset_code'),'reset_code')
                ->sortable()->exceptOnForms()->onlyOnDetail(),

            Text::make(__('national_id'),'national_id')
                ->sortable()->nullable(),

            Text::make(__('api_token'),'api_token')
                ->sortable()->exceptOnForms()->onlyOnDetail(),
            Text::make(__('fcm_token'),'fcm_token')
                ->sortable()->exceptOnForms()->onlyOnDetail(),

            Boolean::make(__('active'),'active')->trueValue(1)->falseValue(0)->sortable()->default(1),

            MorphToMany::make(__('roles'), 'roles', \Eminiarts\NovaPermissions\Nova\Role::class)->hideFromDetail(function () use ($request) {
                return ($this->type != 'Staff');
            }),
            MorphToMany::make(__('permissions'), 'permissions', \Eminiarts\NovaPermissions\Nova\Permission::class)->hideFromDetail(function () use ($request) {
                return ($this->type != 'Staff');
            }),

            HasMany::make(__('addresses'),'addresses', Address::class)->hideFromDetail(function () use ($request) {
                return ($this->type != 'Company');
            }),

            HasMany::make(__('payments'),'payments', Payment::class)->hideFromDetail(function () use ($request) {
                return ($this->type != 'Company');
            }),

            HasMany::make(__('contacts'),'contacts', Contact::class),
            HasMany::make(__('tickets'),'tickets', Ticket::class),
            HasMany::make(__('reviews'),'reviews', Review::class),
            HasMany::make(__('wishlists'),'wishlists', Wishlist::class),

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
