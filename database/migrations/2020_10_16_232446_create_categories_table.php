<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCategoriesTable extends Migration {

	public function up()
	{
		Schema::create('categories', function(Blueprint $table) {
			$table->bigIncrements('id');
			$table->string('name_ar', 191)->nullable();
			$table->string('name_en', 191);
			$table->string('slug', 191);
			$table->boolean('active')->default(1);
			$table->boolean('in_home')->default(0);
			$table->tinyInteger('type')->default(0)->comment('sub->1, subsub->2');
			$table->integer('parent_id')->default(0);
			$table->timestamps();
			$table->softDeletes();
		});
	}

	public function down()
	{
		Schema::drop('categories');
	}
}
