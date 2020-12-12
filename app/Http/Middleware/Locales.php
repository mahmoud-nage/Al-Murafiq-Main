<?php

namespace App\Http\Middleware;

use App\Language;
use Closure;

class Locales
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
        if ($request->headers->has('lang') && $request->header('lang')) {
            $lang = \App\Language::where('language', $request->header('lang'))->where('active', 1)->first();
            if ($lang == null) {
                $lang = \App\Language::where('default', 1)->where('active', 1)->first()->language;
                $request->headers->add(['lang' => $lang]);
            }
        } elseif (auth()->check()) {
            $lang = auth()->user()->default_lang;
            $request->headers->add(['lang' => $lang]);
        } else {
            $lang = \App\Language::where('default', 1)->where('active', 1)->first()->language;
            $request->headers->add(['lang' => $lang]);
        }
        return $next($request);
    }
}
