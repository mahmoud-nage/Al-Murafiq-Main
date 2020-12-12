<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePaymentMethodsTable extends Migration {

	public function up()
	{
		Schema::create('payment_methods', function(Blueprint $table) {
			$table->bigIncrements('id');
			$table->string('name_ar', 191)->nullable();
			$table->string('name_en', 191);
			$table->boolean('active')->default(0);
			$table->string('type')->default('Cash');
            $table->bigInteger('country_id')->unsigned()->nullable();
            $table->softDeletes();
			$table->timestamps();
		});
	}

	public function down()
	{
		Schema::drop('payment_methods');
	}
}
