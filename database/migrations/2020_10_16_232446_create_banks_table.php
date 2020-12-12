<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBanksTable extends Migration {

	public function up()
	{
		Schema::create('banks', function(Blueprint $table) {
			$table->bigIncrements('id');
			$table->string('bank_name_ar', 191)->nullable();
			$table->string('bank_name_en', 191);
			$table->string('branch_name_ar', 191)->nullable();
			$table->string('branch_name_en', 191);
			$table->string('owner_name_ar', 191)->nullable();
			$table->string('owner_name_en', 191);
			$table->string('account_num', 191);
			$table->string('swift_num', 191);
			$table->string('logo', 191)->nullable();
			$table->boolean('active')->default(1);
            $table->bigInteger('country_id')->unsigned()->nullable();
            $table->timestamps();
			$table->softDeletes();
		});
	}

	public function down()
	{
		Schema::drop('banks');
	}
}
