<?php

namespace App\Nova;

use App\General\Banks;
use App\Nova\Resource;
use Illuminate\Support\Str;
use Laravel\Nova\Fields\ID;
use App\Nova\Actions\Active;
use Illuminate\Http\Request;
use Laravel\Nova\Fields\Text;
use App\Nova\Actions\Deactive;
use Laravel\Nova\Fields\Image;
use Laravel\Nova\Fields\Boolean;

class Bank extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\General\Banks::class;

    /**
     * The single value that should be used to represent the resource when being displayed.
     *
     * @var string
     */
    public static $title = 'id';
    public static function group()
    {
        return __('settings'); // TODO: Change the autogenerated stub
    }
    public static function label()
    {
        return __('banks'); // TODO: Change the autogenerated stub
    }

    /**
     * The columns that should be searched.
     *
     * @var array
     */
    public static $search = [
        'id', 'bank_name_ar',
        'bank_name_en', 'branch_name_ar',
        'branch_name_en', 'owner_name_ar',
        'owner_name_en', 'account_num',
        'swift_num',
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

            Text::make(__('bank_name_ar'), 'bank_name_ar')
                ->rules('nullable', 'max:190')
                ->sortable(),

            Text::make(__('bank_name_en'), 'bank_name_en')
                ->rules('required', 'max:190')
                ->sortable(),

            Text::make(__('branch_name_ar'), 'branch_name_ar')
                ->rules('nullable', 'max:190')
                ->sortable()->hideFromIndex(),

            Text::make(__('branch_name_en'), 'branch_name_en')
                ->rules('required', 'max:190')
                ->sortable()->hideFromIndex(),

            Text::make(__('owner_name_ar'), 'owner_name_ar')
                ->rules('nullable', 'max:190')
                ->sortable()->hideFromIndex(),

            Text::make(__('owner_name_en'), 'owner_name_en')
                ->rules('required', 'max:190')
                ->sortable()->hideFromIndex(),

            Text::make(__('account_num'), 'account_num')
                ->rules('required', 'max:190')
                ->sortable(),

            Text::make(__('swift_num'), 'swift_num')
                ->rules('required', 'max:190')
                ->sortable(),

            Image::make(__('bank_logo'), 'logo')
                ->disk('Root')
                ->store(function (Request $request, $model) {
                    $filename = Str::random(50) . '.' . $request->logo->getClientOriginalExtension();
                    $request->logo->move(public_path('/uploads/banks/'), $filename);
                    return [
                        'logo' => '/uploads/banks/' . $filename,
                    ];
                })
                ->prunable()
                ->creationRules('required', 'image', 'mimes:png,jpeg,jpg,gif')
                ->updateRules('image', 'mimes:png,jpeg,jpg,gif'),

            Boolean::make(__('active'),'active')->trueValue(1)->falseValue(0)->sortable()->default(0),
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
