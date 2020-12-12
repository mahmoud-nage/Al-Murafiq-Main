<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCommentLikesTable extends Migration {

	public function up()
	{
		Schema::create('comment_likes', function(Blueprint $table) {
			$table->bigIncrements('id');
			$table->bigInteger('user_id')->unsigned();
			$table->bigInteger('review_id')->unsigned();
			$table->tinyInteger('type')->default(0)->comment('0->like ,1-> dislike');
			$table->text('reson')->nullable();
			$table->timestamps();
			$table->softDeletes();
		});
	}

	public function down()
	{
		Schema::drop('comment_likes');
	}
}
