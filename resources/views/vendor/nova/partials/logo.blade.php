
<span class="text-white sidebar-label">{{\App\General\GeneralSettings::first()['site_'.app()->getLocale()]}}</span>
<img src="{{isset(\App\General\GeneralSettings::first()->logo)?\App\General\GeneralSettings::first()->logo:''}}"class="rounded-full w-8 h-8 @if(app()->getLocale('ar')) ml-3  @else mr-3 @endif"/>
