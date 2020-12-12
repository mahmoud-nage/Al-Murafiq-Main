<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePartenersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('parteners', function (Blueprint $table) {
            $table->id();
			$table->string('name_ar', 191)->nullable();
			$table->string('name_en', 191);
			$table->string('logo', 191);
			$table->boolean('active')->default(1);
            $table->bigInteger('country_id')->unsigned()->nullable();
            $table->timestamps();
			$table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('parteners');
    }
}
