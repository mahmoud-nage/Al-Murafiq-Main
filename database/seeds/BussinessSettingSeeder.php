<?php

use App\General\BusinessSettings;
use Illuminate\Database\Seeder;

class BussinessSettingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        BusinessSettings::create(
            ['type' => 'home_ads_slider_count',
                'value' => 9]
        );
        BusinessSettings::create(
            ['type' => 'home_latest_company_count',
                'value' => 9]
        );
        BusinessSettings::create(
            ['type' => 'home_reviews_count',
                'value' => 9]
        );
        BusinessSettings::create(
            ['type' => 'special_ads_slider_count',
                'value' => 9]
        );
        BusinessSettings::create(
            ['type' => 'banner_ads_slider_count',
                'value' => 9]
        );
        BusinessSettings::create(
            ['type' => 'search_count',
                'value' => 9]
        );
        BusinessSettings::create(
            ['type' => 'general_paginate_count',
                'value' => 9]
        );
    }
}
