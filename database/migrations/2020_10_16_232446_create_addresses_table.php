<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAddressesTable extends Migration {

	public function up()
	{
		Schema::create('addresses', function(Blueprint $table) {
			$table->bigIncrements('id');
			$table->bigInteger('user_id')->unsigned();
            $table->bigInteger('country_id')->unsigned()->nullable();
			$table->bigInteger('city_id')->unsigned()->nullable();
			$table->string('phone', 191);
			$table->text('special_mark')->nullable();
			$table->string('address_details', 191);
            $table->string('lat', 191)->nullable();
            $table->string('lon', 191)->nullable();
			$table->boolean('active')->default(1);
            $table->timestamps();
			$table->softDeletes();
		});
	}

	public function down()
	{
		Schema::drop('addresses');
	}
}
