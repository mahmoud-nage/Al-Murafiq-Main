<p class="mt-8 text-center text-xs text-80">
    <a href="{{url('/dashboard')}}" class="text-primary dim no-underline">{{\App\General\GeneralSettings::first()['site_'.app()->getLocale()]}}</a>
    <span class="px-1">&middot;</span>
    &copy; {{__('2020.  All rights reserved')}}
    <span class="px-1">|</span>
    <a href="http://krito.io/" class="text-primary dim no-underline">{{__('Develped by Krito')}}</a>
</p>
