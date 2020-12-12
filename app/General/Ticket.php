<?php

namespace App\General;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Laravel\Nova\Actions\Actionable;
use Laravel\Nova\Fields\Searchable;

class Ticket extends Model
{
    use searchable , actionable;

    protected $table = 'tickets';
    public $timestamps = true;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $fillable = array('code', 'user_id', 'subject', 'details', 'ticket_status_priority', 'viewed', 'type');
    // protected $visible = array('code', 'user_id', 'subject', 'details', 'ticket_status_priority', 'viewed', 'type');

    public function user()
    {
        return $this->belongsTo('App\User', 'user_id');
    }
    public function ticketReply()
    {
        return $this->hasMany('App\General\TicketReply');
    }

}
