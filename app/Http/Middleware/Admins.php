<?php

namespace App\Http\Middleware;

use Closure;
use Laravel\Nova\Nova;
use Illuminate\Support\Facades\Auth;

class Admins
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(auth()->check()){
            if(auth()->user()->userable_type == 'App\General\Admin'){
                return $next($request);
            }
            Auth::logout();
            abort(404);
        }
    }
}
