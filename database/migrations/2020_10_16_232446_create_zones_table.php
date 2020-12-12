<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateZonesTable extends Migration {

	public function up()
	{
		Schema::create('zones', function(Blueprint $table) {
			$table->bigIncrements('id');
			$table->string('name_ar', 191)->nullable();
			$table->string('name_en', 191);
			$table->bigInteger('area_id')->unsigned();
			$table->boolean('active')->default(1);
            $table->string('lat', 191)->nullable();
            $table->string('lon', 191)->nullable();
			$table->timestamps();
			$table->softDeletes();
		});
	}

	public function down()
	{
		Schema::drop('zones');
	}
}
