<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCountriesTable extends Migration {

	public function up()
	{
		Schema::create('countries', function(Blueprint $table) {
			$table->bigIncrements('id');
			$table->string('name_ar', 191)->unique()->nullable();
			$table->string('name_en', 191)->unique();
			$table->bigInteger('currency_id')->unsigned()->nullable();
			$table->string('icon', 191);
            $table->string('lat', 191)->nullable();
            $table->string('lon', 191)->nullable();
			$table->string('locales', 191)->nullable();
			$table->boolean('active')->default(1);
			$table->boolean('default')->default(0);
			$table->timestamps();
			$table->softDeletes();
		});
	}

	public function down()
	{
		Schema::drop('countries');
	}
}
