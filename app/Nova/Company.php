<?php

namespace App\Nova;

use App\Nova\Actions\AttachSubscription;
use Illuminate\Support\Facades\Hash;
use Laravel\Nova\Fields\Date;
use Laravel\Nova\Fields\MorphMany;
use Laravel\Nova\Fields\Password;
use Laravel\Nova\Fields\Select;
use Laravel\Nova\Fields\Textarea;
use Laravel\Nova\Panel;
use Illuminate\Support\Str;
use Laravel\Nova\Fields\ID;
use App\Nova\Actions\Active;
use App\Nova\Filters\DateTo;
use Illuminate\Http\Request;
use Laravel\Nova\Fields\File;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Fields\Trix;
use App\Nova\Actions\Deactive;
use App\Nova\Filters\DateFrom;
use Laravel\Nova\Fields\Image;
use Laravel\Nova\Fields\Number;
use Laravel\Nova\Fields\Boolean;
use Laravel\Nova\Fields\HasMany;
use Yassi\NestedForm\NestedForm;
use Laravel\Nova\Fields\MorphOne;
use Laravel\Nova\Fields\BelongsTo;
use Laraning\NovaTimeField\TimeField;
use Laravel\Nova\Fields\BooleanGroup;
use App\Nova\Metrics\companies\allAds;
use Laravel\Nova\Fields\BelongsToMany;
use App\Nova\Metrics\companies\AdsTrend;
use App\Nova\Metrics\companies\allViews;
use App\Nova\Metrics\companies\allBranches;
use Laravel\Nova\Http\Requests\NovaRequest;
use App\Nova\Metrics\companies\allSubscription;
use Manmohanjit\BelongsToDependency\BelongsToDependency;

class Company extends Resource
{

    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\Company\Company::class;

    public static function indexQuery(NovaRequest $request, $query)
    {
        return $query->where('parent_id', 0); // TODO: Change the autogenerated stub
    }

    /**
     * The single value that should be used to represent the resource when being displayed.
     *
     * @var string
     */
    public static $title = 'name_en';
    public static $group = 'Companies';
    public static $priority = 1;

    public static function group()
    {
        return __('companies'); // TODO: Change the autogenerated stub
    }

    public static function label()
    {
        return __('companies'); // TODO: Change the autogenerated stub
    }

    public function title()
    {
        return $this['name_' . app()->getLocale()]; // TODO: Change the autogenerated stub
    }

    public function subtitle()
    {
        return "Address: " . $this['address_' . app()->getLocale()] . ', Phone: ' . $this->phone1;
    }


    protected static function fillFields(NovaRequest $request, $model, $fields)
    {
        $fillFields = parent::fillFields($request, $model, $fields);
        // first element should be model object
        $modelObject = $fillFields[0];

        $name = $modelObject->name ? $modelObject->name : $model->user->name;
        $email = $modelObject->email ? $modelObject->email : $model->user->email;
        $pass = $modelObject->password ? $modelObject->password : $model->user->password;

        unset($modelObject->name);
        unset($modelObject->email);
        unset($modelObject->password);
        $model->save();

        if ($model->user) {
            $model->user()->update([
                'name' => $name,
                'email' => $email,
                'password' => Hash::make($pass),
            ]);
        } else {
            $model->user()->create([
                'name' => $name,
                'email' => $email,
                'password' => Hash::make($pass),
            ]);
        }


        // remove all attributes do not have relevant columns in model table
        return $fillFields;
    }

    /**
     * The columns that should be searched.
     *
     * @var array
     */
    public static $search = [
        'id', 'name_ar', 'name_en', 'desc_ar',
        'desc_en', 'address_ar', 'address_en',
        'branch_num', 'active', 'phone1', 'phone2',
        'tel', 'fax','email', 'visit_count', 'lat', 'lon', 'total_rating'
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
            new Panel(__('User Info'), $this->userInfo()),
            new Panel(__('Name Section'), $this->name()),
            new Panel(__('Address Section'), $this->address()),
            new Panel(__('Description Section'), $this->desc()),
            new Panel(__('Uploads Section'), $this->uploads()),
            new Panel(__('Contact Section'), $this->Contacts()),
            new Panel(__('Timming Section'), $this->time()),
            new Panel(__('Governorate Section'), $this->governorate()),
            new Panel(__('Category Section'), $this->category()),
            new Panel(__('Action Section'), $this->action()),
            MorphMany::make(__('Socials'), 'social', Social::class),
            MorphOne::make(__('user'), 'user', User::class),
            new Panel(__('Branches Section'), $this->branches()),

//            BelongsToMany::make('Subscriptions')->fields(function () {
//                return [
//                    Date::make(__('from'), 'from')->rules('required', 'after_or_equal:today'),
//
//                    Select::make(__('paymentMethod'), 'paymentMethod')->options(function () {
//                        return \App\General\PaymentMethod::where('type', 'Cash')->pluck('name_' . app()->getLocale(), 'id');
//                    })->searchable()->rules('required'),
//
//                    Textarea::make(__('payment_details'), 'payment_details'),
//                    Boolean::make(__('Payment Status'), 'payment_status')->trueValue(1)->falseValue(0)->sortable()->default(0),
//                ];
//            }),

            HasMany::make(__('Subscriptions'), 'Subscriptions', CompanySubsription::class),
            HasMany::make(__('ads'), 'ads', Ad::class),
            HasMany::make(__('payments'), 'payments', Payment::class),
            HasMany::make(__('reviews'), 'reviews', Review::class),
        ];
    }


    public function name()
    {
        return [
            Text::make(__('name_ar'), 'name_ar')
                ->rules('required', 'max:190')
                ->sortable(),
            Text::make(__('name_en'), 'name_en')
                ->rules('required', 'max:190')
                ->sortable(),
        ];
    }

    public function address()
    {
        return [
            Text::make(__('Address Arabic'), 'address_ar')
                ->rules('nullable', 'max:190')
                ->sortable(),
            Text::make(__('Address English'), 'address_en')
                ->rules('required', 'max:190')
                ->sortable(),
        ];
    }

    public function desc()
    {
        return [
            Trix::make(__('desc_ar'), 'desc_ar')->rules('nullable'),
            Trix::make(__('desc_en'), 'desc_en')->required(),
        ];
    }

    public function uploads()
    {
        return [
            Image::make(__('logo'), 'image')
                ->disk('Root')
                ->store(function (Request $request, $model) {
                    $filename = Str::random(50) . '.' . $request->image->getClientOriginalExtension();
                    $request->image->move(public_path('/uploads/companies/'), $filename);
                    return [
                        'image' => '/uploads/companies/' . $filename,
                    ];
                })
                ->prunable()
                ->creationRules('image', 'mimes:png,jpeg,jpg,gif')
                ->updateRules('image', 'mimes:png,jpeg,jpg,gif'),

            File::make(__('pdf'), 'pdf')
                ->disk('Root')
                ->store(function (Request $request, $model) {
                    $filename = Str::random(50) . '.' . $request->pdf->getClientOriginalExtension();
                    $request->pdf->move(public_path('/uploads/users/companies/pdf/'), $filename);
                    return [
                        'pdf' => '/uploads/users/companies/pdf/' . $filename,
                    ];
                })
                ->prunable()
                ->creationRules('file', 'mimes:pdf')
                ->updateRules('file', 'mimes:pdf')
                ->hideFromIndex(),

        ];
    }

    public function Contacts()
    {
        return [
            Text::make(__('Main Phone'), 'phone1')
                ->rules('max:190')
                ->sortable(),
            Text::make(__('Second Phone'), 'phone2')
                ->rules('max:190')
                ->sortable()->hideFromIndex(),
            Text::make(__('Telephone'), 'tel')
                ->rules('max:190')
                ->sortable()->hideFromIndex(),
            Text::make(__('fax'), 'fax')
                ->rules('max:190')
                ->sortable()->hideFromIndex(),
//            Text::make(__('whatsapp'),'whatsapp')
//                ->rules('max:190')
//                ->sortable()->hideFromIndex(),
            Text::make(__('email'), 'email')
                ->rules('nullable', 'max:190', 'email')
                ->sortable()->nullable(),
        ];
    }

    public function time()
    {
        return [
            Boolean::make(__('Open Now?'), 'is_open')->trueValue(1)->falseValue(0)->sortable()->default(1)->hideWhenCreating(),
            TimeField::make(__('Opening Time'), 'open_from')->nullable(),
            TimeField::make(__('Closing Time'), 'open_to')->nullable(),
            BooleanGroup::make(__('holiday'), 'holiday')->options([
                'Saturday' => __('Saturday'),
                'Sunday' => __('Sunday'),
                'Monday' => __('Monday'),
                'Tuesday' => __('Tuesday'),
                'Wednesday' => __('Wednesday'),
                'Thursday' => __('Thursday'),
                'Friday' => __('Friday'),
            ])->hideFromIndex(),
            Trix::make(__('Reason For Closed'), 'closed_reason')->nullable()->onlyOnDetail(),
        ];
    }

    public function governorate()
    {
        return [
            BelongsTo::make(__('country'), 'country', Country::class)->nullable(),

            BelongsToDependency::make(__('city'), 'city', City::class)->dependsOn('country', 'country_id')
                ->nullable()->hideFromIndex(),

//            BelongsToDependency::make(__('area'),'area', Area::class)->dependsOn('city', 'city_id')
//            ->nullable(),
//
//            BelongsToDependency::make(__('zone'),'zone', Zone::class)->dependsOn('area', 'area_id')
//            ->nullable(),
        ];
    }

    public function category()
    {
        return [

            BelongsTo::make(__('Main Category'), 'category', Category::class)->required()->hideFromIndex(),

            BelongsToDependency::make(__('Sub Category'), 'subCategory', SubCategory::class)
                ->dependsOn('category', 'parent_id')
                ->required()->hideFromIndex(),
        ];
    }

    public function action()
    {
        return [
            Boolean::make(__('active'), 'active')->trueValue(1)->falseValue(0)->sortable()->default(0),
        ];
    }

    public function branches()
    {
        return [
            Number::make(__('# of Branches'), 'branch_num')->rules('required')->step(1)->min(0)->default(0)->exceptOnForms(),
        ];
    }

    public function userInfo()
    {
        return [
            Text::make(__('name'), 'name')
                ->rules('required', 'max:191')
                ->onlyOnForms()->hideWhenUpdating(),

            Text::make(__('email'), 'email')
                ->rules('required', 'email', 'max:191')
                ->creationRules('unique:users,email')
                ->updateRules('unique:users,email,{{resourceId}}')
                ->onlyOnForms()->hideWhenUpdating(),

            Password::make(__('password'), 'password')
                ->creationRules('required', 'string', 'min:8')
                ->onlyOnForms()->hideWhenUpdating(),
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
        return [
            (new allBranches)->onlyOnDetail(),
            (new allViews)->onlyOnDetail(),
            (new allSubscription)->onlyOnDetail(),
            (new allAds)->onlyOnDetail(),
            (new AdsTrend)->onlyOnDetail()->width('2/3'),
        ];
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

            (new AttachSubscription)->onlyOnDetail()
        ];
    }
}
