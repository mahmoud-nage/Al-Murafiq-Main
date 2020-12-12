<?php

namespace App\Nova\Dashboards;

use App\Nova\Metrics\allAdmins;
use App\Nova\Metrics\allCompanies;
use App\Nova\Metrics\allCustomers;
use App\Nova\Metrics\allMarheters;
use App\Nova\Metrics\TotalUsers;
use Coroowicaksono\ChartJsIntegration\BarChart;
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
        $paid = \App\General\Payment::where('payment_status', 1)->count();
        $ubpaid = \App\General\Payment::where('payment_status', 0)->count();

        $cache = \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Cash')->first()->id)->count();
        $online = \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Online')->first()->id)->count();
        $bank = \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Bank')->first()->id)->count();

        $Sumcache = \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Cash')->first()->id)->sum('amount');
        $Sumonline = \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Online')->first()->id)->sum('amount');
        $Sumbank = \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Bank')->first()->id)->sum('amount');
//        $delegate = \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'delegate')->first()->id)->count();

        return [
            (new BarChart())
                ->title(__('Payments Counter Report'))
                ->animations([
                    'enabled' => true,
                    'easing' => 'easeinout',
                ])
                ->series(array([
                    'barPercentage' => 0.5,
                    'label' => __('Cash') . ' (' . $cache . ')',
                    'backgroundColor' => '#000',
                    'data' => [
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Cash')->first()->id)->whereMonth('created_at', 1)->count(),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Cash')->first()->id)->whereMonth('created_at', 2)->count(),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Cash')->first()->id)->whereMonth('created_at', 3)->count(),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Cash')->first()->id)->whereMonth('created_at', 1)->count(),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Cash')->first()->id)->whereMonth('created_at', 5)->count(),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Cash')->first()->id)->whereMonth('created_at', 6)->count(),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Cash')->first()->id)->whereMonth('created_at', 7)->count(),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Cash')->first()->id)->whereMonth('created_at', 8)->count(),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Cash')->first()->id)->whereMonth('created_at', 9)->count(),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Cash')->first()->id)->whereMonth('created_at', 10)->count(),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Cash')->first()->id)->whereMonth('created_at', 11)->count(),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Cash')->first()->id)->whereMonth('created_at', 12)->count()
                    ],
                ], [
                    'barPercentage' => 0.5,
                    'label' => __('Bank') . ' (' . $bank . ')',
                    'backgroundColor' => '#f99037',
                    'data' => [
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Bank')->first()->id)->whereMonth('created_at', 1)->count(),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Bank')->first()->id)->whereMonth('created_at', 2)->count(),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Bank')->first()->id)->whereMonth('created_at', 3)->count(),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Bank')->first()->id)->whereMonth('created_at', 1)->count(),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Bank')->first()->id)->whereMonth('created_at', 5)->count(),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Bank')->first()->id)->whereMonth('created_at', 6)->count(),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Bank')->first()->id)->whereMonth('created_at', 7)->count(),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Bank')->first()->id)->whereMonth('created_at', 8)->count(),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Bank')->first()->id)->whereMonth('created_at', 9)->count(),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Bank')->first()->id)->whereMonth('created_at', 10)->count(),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Bank')->first()->id)->whereMonth('created_at', 11)->count(),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Bank')->first()->id)->whereMonth('created_at', 12)->count()
                    ],],
                    [
                        'barPercentage' => 0.5,
                        'label' => __('Online') . ' (' . $online . ')',
                        'backgroundColor' => '#098f56',

                        'data' => [
                            \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Online')->first()->id)->whereMonth('created_at', 1)->count(),
                            \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Online')->first()->id)->whereMonth('created_at', 2)->count(),
                            \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Online')->first()->id)->whereMonth('created_at', 3)->count(),
                            \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Online')->first()->id)->whereMonth('created_at', 1)->count(),
                            \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Online')->first()->id)->whereMonth('created_at', 5)->count(),
                            \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Online')->first()->id)->whereMonth('created_at', 6)->count(),
                            \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Online')->first()->id)->whereMonth('created_at', 7)->count(),
                            \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Online')->first()->id)->whereMonth('created_at', 8)->count(),
                            \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Online')->first()->id)->whereMonth('created_at', 9)->count(),
                            \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Online')->first()->id)->whereMonth('created_at', 10)->count(),
                            \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Online')->first()->id)->whereMonth('created_at', 11)->count(),
                            \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Online')->first()->id)->whereMonth('created_at', 12)->count()
                        ],],

//                    [
//                    'barPercentage' => 0.5,
//                    'label' => __('delegate') . ' (' . $delegate . ')',
//                    'backgroundColor' => '#f2cb22',
//                    'data' => [\App\User::where('type', 'Customer')->whereMonth('created_at', 1)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 2)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 3)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 4)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 5)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 6)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 7)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 8)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 9)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 10)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 11)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', '12')->count()],
//                ]

                ))
                ->options([
                    'xaxis' => [
                        'categories' => [__('Jan'), __('Feb'), __('Mar'), __('Apr'), __('May'), __('Jun'), __('Jul'), __('Aug'), __('Sep'), __('Oct'), __('Nov'), __('Dec')]
                    ],
                    'btnRefresh' => true, // default is false
                ])
                ->width('full'),

            (new BarChart())
                ->title(__('Financial report'))
                ->animations([
                    'enabled' => true,
                    'easing' => 'easeinout',
                ])
                ->series(array([
                    'barPercentage' => 0.5,
                    'label' => __('Cash') . ' (' . $Sumcache . ')',
                    'backgroundColor' => '#000',
                    'data' => [
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Cash')->first()->id)->whereMonth('created_at', 1)->sum('amount'),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Cash')->first()->id)->whereMonth('created_at', 2)->sum('amount'),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Cash')->first()->id)->whereMonth('created_at', 3)->sum('amount'),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Cash')->first()->id)->whereMonth('created_at', 4)->sum('amount'),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Cash')->first()->id)->whereMonth('created_at', 5)->sum('amount'),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Cash')->first()->id)->whereMonth('created_at', 6)->sum('amount'),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Cash')->first()->id)->whereMonth('created_at', 7)->sum('amount'),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Cash')->first()->id)->whereMonth('created_at', 8)->sum('amount'),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Cash')->first()->id)->whereMonth('created_at', 9)->sum('amount'),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Cash')->first()->id)->whereMonth('created_at', 10)->sum('amount'),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Cash')->first()->id)->whereMonth('created_at', 11)->sum('amount'),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Cash')->first()->id)->whereMonth('created_at', 12)->sum('amount')
                    ],
                ], [
                    'barPercentage' => 0.5,
                    'label' => __('Bank') . ' (' . $Sumonline . ')',
                    'backgroundColor' => '#f99037',
                    'data' => [
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Bank')->first()->id)->whereMonth('created_at', 1)->sum('amount'),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Bank')->first()->id)->whereMonth('created_at', 2)->sum('amount'),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Bank')->first()->id)->whereMonth('created_at', 3)->sum('amount'),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Bank')->first()->id)->whereMonth('created_at', 4)->sum('amount'),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Bank')->first()->id)->whereMonth('created_at', 5)->sum('amount'),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Bank')->first()->id)->whereMonth('created_at', 6)->sum('amount'),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Bank')->first()->id)->whereMonth('created_at', 7)->sum('amount'),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Bank')->first()->id)->whereMonth('created_at', 8)->sum('amount'),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Bank')->first()->id)->whereMonth('created_at', 9)->sum('amount'),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Bank')->first()->id)->whereMonth('created_at', 10)->sum('amount'),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Bank')->first()->id)->whereMonth('created_at', 11)->sum('amount'),
                        \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Bank')->first()->id)->whereMonth('created_at', 12)->sum('amount')
                    ],],
                    [
                        'barPercentage' => 0.5,
                        'label' => __('Online') . ' (' . $Sumbank . ')',
                        'backgroundColor' => '#098f56',

                        'data' => [
                            \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Online')->first()->id)->whereMonth('created_at', 1)->sum('amount'),
                            \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Online')->first()->id)->whereMonth('created_at', 2)->sum('amount'),
                            \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Online')->first()->id)->whereMonth('created_at', 3)->sum('amount'),
                            \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Online')->first()->id)->whereMonth('created_at', 1)->sum('amount'),
                            \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Online')->first()->id)->whereMonth('created_at', 5)->sum('amount'),
                            \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Online')->first()->id)->whereMonth('created_at', 6)->sum('amount'),
                            \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Online')->first()->id)->whereMonth('created_at', 7)->sum('amount'),
                            \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Online')->first()->id)->whereMonth('created_at', 8)->sum('amount'),
                            \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Online')->first()->id)->whereMonth('created_at', 9)->sum('amount'),
                            \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Online')->first()->id)->whereMonth('created_at', 10)->sum('amount'),
                            \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Online')->first()->id)->whereMonth('created_at', 11)->sum('amount'),
                            \App\General\Payment::where('payment_method_id', \App\General\PaymentMethod::where('type', 'Online')->first()->id)->whereMonth('created_at', 12)->sum('amount')
                        ],],

//                    [
//                    'barPercentage' => 0.5,
//                    'label' => __('delegate') . ' (' . $delegate . ')',
//                    'backgroundColor' => '#f2cb22',
//                    'data' => [\App\User::where('type', 'Customer')->whereMonth('created_at', 1)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 2)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 3)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 4)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 5)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 6)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 7)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 8)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 9)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 10)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 11)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', '12')->count()],
//                ]

                ))
                ->options([
                    'xaxis' => [
                        'categories' => [__('Jan'), __('Feb'), __('Mar'), __('Apr'), __('May'), __('Jun'), __('Jul'), __('Aug'), __('Sep'), __('Oct'), __('Nov'), __('Dec')]
                    ],
                    'btnRefresh' => true, // default is false
                ])
                ->width('full'),

            new TotalUsers,
            new allAdmins,
            new allCompanies,
            new allMarheters,
            new allCustomers,
        ];
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
