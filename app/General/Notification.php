<?php

namespace App\General;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Laravel\Nova\Actions\Actionable;
use Laravel\Nova\Fields\Searchable;

class Notification extends Model 
{
    use searchable , actionable;

    protected $table = 'notifications';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $fillable = array('user_id', 'title_ar', 'title_en', 'body_ar', 'body_en', 'type');
    // protected $visible = array('user_id', 'title_ar', 'title_en', 'body_ar', 'body_en', 'type');

    public function users()
    {
        return $this->belongsToMany('App\User', 'notification_users', 'user_id');
    }

    public function user()
    {
        return $this->belongsTo('App\User', 'user_id');
    }

}