<?php

namespace App\Nova\Dashboards;

use App\Nova\Metrics\Payments\BankCount;
use App\Nova\Metrics\Payments\BankTrend;
use App\Nova\Metrics\Payments\CashCount;
use App\Nova\Metrics\Payments\CashTrend;
use App\Nova\Metrics\Payments\DelegateCount;
use App\Nova\Metrics\Payments\DelegateTrend;
use App\Nova\Metrics\Payments\OnlineCount;
use App\Nova\Metrics\Payments\OnlineTrend;
use App\Nova\Metrics\Payments\PaidSum;
use App\Nova\Metrics\Payments\PaidTrend;
use App\Nova\Metrics\Payments\UnPaidSum;
use App\Nova\Metrics\Payments\UnPaidTrend;
use Laravel\Nova\Dashboard;

class Payments extends Dashboard
{
    /**
     * Get the cards for the dashboard.
     *
     * @return array
     */
    public function cards()
    {
        return [
            (new PaidSum)->help('This is calculated using all users that are active and not banned.'),
            (new PaidTrend)->width('2/3')->help('This is calculated using all users that are active and not banned.'),
            (new UnPaidSum)->help('This is calculated using all users that are active and not banned.'),
            (new UnPaidTrend)->width('2/3')->help('This is calculated using all users that are active and not banned.'),
            (new CashCount)->help('This is calculated using all users that are active and not banned.'),
            (new CashTrend)->width('2/3')->help('This is calculated using all users that are active and not banned.'),
            (new BankCount)->help('This is calculated using all users that are active and not banned.'),
            (new BankTrend)->width('2/3')->help('This is calculated using all users that are active and not banned.'),
            (new OnlineCount)->help('This is calculated using all users that are active and not banned.'),
            (new OnlineTrend)->width('2/3')->help('This is calculated using all users that are active and not banned.'),
            (new DelegateCount)->help('This is calculated using all users that are active and not banned.'),
            (new DelegateTrend)->width('2/3')->help('This is calculated using all users that are active and not banned.'),
        ];
    }

    public function name()
    {
        return __('payments');
    }

    /**
     * Get the URI key for the dashboard.
     *
     * @return string
     */
    public static function uriKey()
    {
        return 'payments';
    }
}
