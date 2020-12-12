<?php

use App\Language;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Schema;

class LanguageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Language::first()->update([
            'name_en' => 'English',
            'name_ar' => 'الانجليزيه',
        ]);
        Language::create(array(
            'name_en' => 'Arabic',
            'name_ar' => 'العربيه',
            'language' => 'ar',
            'active' => 1,
            'default' => 1
        ));
    }
}
