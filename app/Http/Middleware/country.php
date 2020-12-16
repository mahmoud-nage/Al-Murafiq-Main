<?php

namespace App\Http\Middleware;

use Closure;

class country
{
    /**
     * Handle an incoming request.
     *
     * @param \Illuminate\Http\Request $request
     * @param \Closure $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if ($request->has('country_id') && $request->country_id) {
            $country = \App\General\Country::where('id', $request->country_id)->where('active', 1)->first();
            if ($country == null) {
                $country = \App\General\Country::where('default', 1)->where('active', 1)->first()->id;
                $request->merge(['country_id' => $country]);
            }
        } elseif (auth()->check()) {
            $country = auth()->user()->country_id;
            $request->merge(['country_id' => $country]);
        } else {
            $country = \App\General\Country::where('default', 1)->where('active', 1)->first()->id;
            $request->merge(['country_id' => $country]);
        }
        return $next($request);
    }
}
