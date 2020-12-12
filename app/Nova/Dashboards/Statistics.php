<?php

namespace App\Nova\Dashboards;

use App\Nova\Metrics\allAdmins;
use App\Nova\Metrics\allCompanies;
use App\Nova\Metrics\allCustomers;
use App\Nova\Metrics\allMarheters;
use App\Nova\Metrics\TotalUsers;
use Coroowicaksono\ChartJsIntegration\BarChart;
use Laravel\Nova\Dashboard;

class Statistics extends Dashboard
{
    /**
     * Get the cards for the dashboard.
     *
     * @return array
     */
    public function cards()
    {
        $Staffs = \App\User::where('type', 'Staff')->count();
        $marketers = \App\User::where('type', 'Marketer')->count();
        $companies = \App\User::where('type', 'Company')->count();
        $customers = \App\User::where('type', 'Customer')->count();

        return [
            (new BarChart())
                ->title(__('All Users'))
                ->animations([
                    'enabled' => true,
                    'easing' => 'easeinout',
                ])
                ->series(array([
                    'barPercentage' => 0.5,
                    'label' => __('staff').' (' . $Staffs . ')',
                    'backgroundColor' => '#000',
                    'data' => [\App\User::where('type', 'Staff')->whereMonth('created_at', 1)->count(), \App\User::where('type', 'Staff')->whereMonth('created_at', 2)->count(), \App\User::where('type', 'Staff')->whereMonth('created_at', 3)->count(), \App\User::where('type', 'Staff')->whereMonth('created_at', 1)->count(), \App\User::where('type', 'Staff')->whereMonth('created_at', 5)->count(), \App\User::where('type', 'Staff')->whereMonth('created_at', 6)->count(), \App\User::where('type', 'Staff')->whereMonth('created_at', 7)->count(), \App\User::where('type', 'Staff')->whereMonth('created_at', 8)->count(), \App\User::where('type', 'Staff')->whereMonth('created_at', 9)->count(), \App\User::where('type', 'Staff')->whereMonth('created_at', 10)->count(), \App\User::where('type', 'Staff')->whereMonth('created_at', 11)->count(), \App\User::where('type', 'Staff')->whereMonth('created_at', '12')->count()],
                ], [
                    'barPercentage' => 0.5,
                    'label' => __('companies').' (' . $companies . ')',
                    'backgroundColor' => '#f99037',
                    'data' => [\App\User::where('type', 'Company')->whereMonth('created_at', 1)->count(), \App\User::where('type', 'Company')->whereMonth('created_at', 2)->count(), \App\User::where('type', 'Company')->whereMonth('created_at', 3)->count(), \App\User::where('type', 'Company')->whereMonth('created_at', 4)->count(), \App\User::where('type', 'Company')->whereMonth('created_at', 5)->count(), \App\User::where('type', 'Company')->whereMonth('created_at', 6)->count(), \App\User::where('type', 'Company')->whereMonth('created_at', 7)->count(), \App\User::where('type', 'Company')->whereMonth('created_at', 8)->count(), \App\User::where('type', 'Company')->whereMonth('created_at', 9)->count(), \App\User::where('type', 'Company')->whereMonth('created_at', 10)->count(), \App\User::where('type', 'Company')->whereMonth('created_at', 11)->count(), \App\User::where('type', 'Company')->whereMonth('created_at', '12')->count()],
                ], [
                    'barPercentage' => 0.5,
                    'label' => __('marketers').' (' . $marketers . ')',
                    'backgroundColor' => '#098f56',

                    'data' => [\App\User::where('type', 'Marketer')->whereMonth('created_at', '01')->count(), \App\User::where('type', 'Marketer')->whereMonth('created_at', '02')->count(), \App\User::where('type', 'Marketer')->whereMonth('created_at', 3)->count(), \App\User::where('type', 'Marketer')->whereMonth('created_at', 4)->count(), \App\User::where('type', 'Marketer')->whereMonth('created_at', 5)->count(), \App\User::where('type', 'Marketer')->whereMonth('created_at', 6)->count(), \App\User::where('type', 'Marketer')->whereMonth('created_at', 7)->count(), \App\User::where('type', 'Marketer')->whereMonth('created_at', 8)->count(), \App\User::where('type', 'Marketer')->whereMonth('created_at', '09')->count(), \App\User::where('type', 'Marketer')->whereMonth('created_at', 10)->count(), \App\User::where('type', 'Marketer')->whereMonth('created_at', 11)->count(), \App\User::where('type', 'Marketer')->whereMonth('created_at', '12')->count()],
                ], [
                    'barPercentage' => 0.5,
                    'label' => __('customers').' (' . $customers . ')',
                    'backgroundColor' => '#f2cb22',
                    'data' => [\App\User::where('type', 'Customer')->whereMonth('created_at', 1)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 2)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 3)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 4)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 5)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 6)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 7)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 8)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 9)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 10)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', 11)->count(), \App\User::where('type', 'Customer')->whereMonth('created_at', '12')->count()],
                ]))
                ->options([
                    'xaxis' => [
                        'categories' => ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
                    ],
                    'btnRefresh' => true, // default is false
                ])
                ->width('2/3'),

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
        return 'statistics';
    }
}
