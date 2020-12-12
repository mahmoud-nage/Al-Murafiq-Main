<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCompanySubsriptionsTable extends Migration {

	public function up()
	{
		Schema::create('company_subsriptions', function(Blueprint $table) {
			$table->bigIncrements('id');
			$table->bigInteger('company_id')->unsigned();
			$table->bigInteger('subscription_id')->unsigned();
			$table->date('from')->nullable();
			$table->date('to')->nullable();
			$table->double('price')->default(0);
			$table->integer('slider_num')->default(0);
			$table->integer('banner_num')->unsigned()->default(0);
			$table->bigInteger('payment_id')->unsigned()->nullable()->default(0);
            $table->bigInteger('country_id')->unsigned()->nullable();
            $table->timestamps();
			$table->softDeletes();
		});
	}

	public function down()
	{
		Schema::drop('company_subsriptions');
	}
}
