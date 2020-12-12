<?php

namespace App\General;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Laravel\Nova\Actions\Actionable;
use Laravel\Nova\Fields\Searchable;

class CommentLike extends Model 
{
    use searchable , actionable;

    protected $table = 'comment_likes';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $fillable = array('user_id', 'review_id', 'type', 'reson');
    // protected $visible = array('user_id', 'review_id', 'type', 'reson');

}