<?php

namespace App\Providers;

use App\Company\Company;
use App\General\BusinessSettings;
use App\General\Category;
use App\General\GeneralSettings;
use App\Observers\CompanyObserve;
use App\Observers\CategoryObserve;
use App\General\CampanySubsriptions;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\ServiceProvider;
use App\Observers\CampanySubsriptionsObserver;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
        Schema::defaultStringLength(191);
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Company::observe(CompanyObserve::class);
        CampanySubsriptions::observe(CampanySubsriptionsObserver::class);
    }
}
