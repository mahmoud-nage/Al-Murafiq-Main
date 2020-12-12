<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGeneralSettingsTable extends Migration {

	public function up()
	{
		Schema::create('general_settings', function(Blueprint $table) {
			$table->bigIncrements('id');
			$table->string('logo', 191);
			$table->string('favicon', 191);
			$table->string('address_ar', 191)->nullable();
			$table->string('address_en', 191);
			$table->string('site_ar', 191)->nullable();
			$table->string('site_en', 191);
            $table->string('lat', 191)->nullable();
            $table->string('lon', 191)->nullable();
			$table->timestamps();
			$table->softDeletes();
		});
	}

	public function down()
	{
		Schema::drop('general_settings');
	}
}
