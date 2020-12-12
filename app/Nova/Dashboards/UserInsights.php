<?php

namespace App\Nova\Dashboards;

use Laravel\Nova\Dashboard;

class UserInsights extends Dashboard
{
    /**
     * Get the cards for the dashboard.
     *
     * @return array
     */
    public function cards()
    {
        return [
            //
        ];
    }

    // public static string $title = 'Example Dashboard';

    // public function views(): array
    // {
    //     return [
    //         ExampleView1::make()->authorizedToSee(fn() => true),
    //         ExampleView2::make()->editable()->private(),
    //         ExampleView3::make()->editable()
    //     ];
    // }

    // public function options(): array
    // {
    //     return [
    //         'expandFilterByDefault' => true,
    //         'grid' => [
    //             'compact' => true,
    //             'numberOfCols' => 6
    //         ]
    //     ];
    // }


    /**
     * Get the URI key for the dashboard.
     *
     * @return string
     */
    public static function uriKey()
    {
        return 'user-insights';
    }
}
