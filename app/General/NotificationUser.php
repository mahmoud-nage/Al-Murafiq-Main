<?php

namespace App\General;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Laravel\Nova\Actions\Actionable;
use Laravel\Nova\Fields\Searchable;

class NotificationUser extends Model 
{
    use actionable;

    protected $table = 'notification_users';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $fillable = array('user_id', 'notification_id', 'seen', 'provider');
    // protected $visible = array('user_id', 'notification_id', 'seen', 'provider');

}