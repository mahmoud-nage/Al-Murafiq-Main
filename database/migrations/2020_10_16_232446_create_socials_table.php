<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSocialsTable extends Migration {

	public function up()
	{
		Schema::create('socials', function(Blueprint $table) {
			$table->bigIncrements('id');
			$table->string('link', 191);
			$table->boolean('active')->default(1);
			$table->string('icon_type')->default('other')->comment('facebook, insta , other ...');
            $table->bigInteger('socialable_id')->nullable();
            $table->string('socialable_type')->nullable();
			$table->timestamps();
			$table->softDeletes();
		});
	}

	public function down()
	{
		Schema::drop('socials');
	}
}
