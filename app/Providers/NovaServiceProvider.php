<?php

namespace App\Providers;

use App\Nova\Dashboards\General;
use App\Nova\Dashboards\Payments;
use App\Nova\Dashboards\Statistics;
use App\User;
use Laravel\Nova\Nova;
use Day4\SwitchLocale\SwitchLocale;
use Illuminate\Support\Facades\Gate;
use Laravel\Nova\NovaApplicationServiceProvider;
use Joedixon\NovaTranslation\NovaTranslation;

class NovaServiceProvider extends NovaApplicationServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        parent::boot();

        Nova::serving(function () {
            $default_lang = isset(auth()->user()->default_lang) && auth()->user()->default_lang ? auth()->user()->default_lang : 'ar';
            app()->setLocale($default_lang);
        });

        Nova::sortResourcesBy(function ($resource) {
            return $resource::$priority ?? 999;
        });
    }

    /**
     * Register the Nova routes.
     *
     * @return void
     */
    protected function routes()
    {
        Nova::routes()
            ->withAuthenticationRoutes()
            ->withPasswordResetRoutes()
            ->register();
    }

    /**
     * Register the Nova gate.
     *
     * This gate determines who can access Nova in non-local environments.
     *
     * @return void
     */
    protected function gate()
    {
        Gate::define('viewNova', function ($user) {
            return in_array($user->email, [
                //
            ]);
        });
        // Gate::define('viewNova', function ($user) {
        //     if( !$user->isSuperAdmin() ) {
        //         abort(redirect('/dashboard')->with('warning', 'You do not have permission to access this page!'));
        //     }
        //     return true;
        // });
    }

    /**
     * Get the cards that should be displayed on the default Nova dashboard.
     *
     * @return array
     */
    protected function cards()
    {
        return [

        ];

    }

    /**
     * Get the extra dashboards that should be displayed on the Nova dashboard.
     *
     * @return array
     */
    protected function dashboards()
    {
        return [
            (new General)->canSee(function ($request) {
                return $request->user()->can('GeneralDashBoard', User::class);
            }),
            (new Payments)->canSee(function ($request) {
                return $request->user()->can('PaymentDashBoard', User::class);
            }),
//            (new Statistics)->canSee(function ($request) {
//                return $request->user()->can('StaticsDashBoard', User::class);
//            }),
        ];
    }

    /**
     * Get the tools that should be listed in the Nova sidebar.
     *
     * @return array
     */
    public function tools()
    {
        return [
            (new \Eminiarts\NovaPermissions\NovaPermissions())->canSee(function ($request) {
                return $request->user()->isSuperAdmin();
            }),

            new SwitchLocale([
                "locales" => [
                    "ar" => __('AR'),
                    "en" => __('EN')
                ],
                "useFallback" => false,
                "customDetailToolbar" => false //optional
            ]),
//                new NovaTranslation,

        ];
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {


    }

    protected function registerTools()
    {
        Nova::tools([
            new NovaTranslation,
        ]);
    }

}
