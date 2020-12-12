<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;
use Laravel\Passport\Passport;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
         'App\Model' => 'App\Policies\ModelPolicy',
        'App\Customer\Customer' => 'App\Policies\CustomerPolicy',
        'App\Affilate\Affilate' => 'App\Policies\AffilatePolicy',
        'App\Company\Company' => 'App\Policies\CompaniesAppPolicy',
        'App\Company\Company' => 'App\Policies\CompanyPolicy',
        'App\General\Admin' => 'App\Policies\AdminPolicy',

        'App\General\AboutUs' => 'App\Policies\AboutUsPolicy',
        'App\General\Address' => 'App\Policies\AddressPolicy',
        'App\General\Ad' => 'App\Policies\AdPolicy',
        'App\General\Area' => 'App\Policies\AreaPolicy',
        'App\General\Banks' => 'App\Policies\BankPolicy',
        'App\General\Blog' => 'App\Policies\BlogPolicy',
        'App\General\Branch' => 'App\Policies\BranchPolicy',
        'App\General\Category' => 'App\Policies\CategoryPolicy',
        'App\General\City' => 'App\Policies\CityPolicy',
        'App\General\CommentLike' => 'App\Policies\CommentLikePolicy',
        'App\General\Contact' => 'App\Policies\ContactPolicy',
        'App\General\Country' => 'App\Policies\CountryPolicy',

        'App\General\GeneralSettings' => 'App\Policies\GeneralSettingsPolicy',
        'App\General\BusinessSettings' => 'App\Policies\BusinessSettingsPolicy',

        'App\General\Link' => 'App\Policies\LinkPolicy',
        'App\General\Notification' => 'App\Policies\NotificationPolicy',
        'App\General\PaymentMethod' => 'App\Policies\PaymentMethodPolicy',
        'App\General\Payment' => 'App\Policies\PaymentPolicy',
        'App\General\Policy' => 'App\Policies\PolicyPolicy',
        'App\General\Review' => 'App\Policies\ReviewPolicy',
        'App\General\Social' => 'App\Policies\SocialPolicy',
        'App\General\Category' => 'App\Policies\SubCategoryPolicy',
        'App\General\Subscription' => 'App\Policies\SubscriptionPolicy',
        'App\General\Category' => 'App\Policies\SubSubCategoryPolicy',
        'App\General\Ticket' => 'App\Policies\TicketPolicy',
        'App\General\TicketReply' => 'App\Policies\TicketReplyPolicy',
        'App\General\User' => 'App\Policies\UserPolicy',
        'App\General\Wishlist' => 'App\Policies\WishlistPolicy',
        'App\General\Zone' => 'App\Policies\ZonePolicy',

        'App\General\Partner' => 'App\Policies\PartnerPolicy',
        'App\General\Status' => 'App\Policies\StatusPolicy',
        'App\General\Search' => 'App\Policies\SearchPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();
        Passport::routes();
    }
}
