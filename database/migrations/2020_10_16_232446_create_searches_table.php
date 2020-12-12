<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSearchesTable extends Migration {

	public function up()
	{
		Schema::create('searches', function(Blueprint $table) {
			$table->bigIncrements('id');
			$table->text('query');
			$table->bigInteger('count')->default(1);
			$table->bigInteger('searchable_id')->nullable();
			$table->string('searchable_type')->nullable();
            $table->bigInteger('country_id')->unsigned()->nullable();
            $table->timestamps();
			$table->softDeletes();
		});
	}

	public function down()
	{
		Schema::drop('searches');
	}
}
