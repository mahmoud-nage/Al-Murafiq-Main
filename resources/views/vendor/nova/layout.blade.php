<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}" class="h-full font-sans antialiased">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=1280">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title> {{\App\General\GeneralSettings::first()['site_'.app()->getLocale()]}}</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,800,800i,900,900i" rel="stylesheet">

    <!-- Styles -->
    <link rel="stylesheet" href="{{ mix('app.css', 'vendor/nova') }}">
    @if(app()->getLocale() == 'ar')
    <link rel="stylesheet" href="{{ asset('style_ar.css') }}">
    @endif
    <!-- FavIcon -->
    <link rel="icon" href="{{isset(\App\General\GeneralSettings::first()->favicon)?\App\General\GeneralSettings::first()->favicon:''}}" type="image/gif" sizes="16x16">

    <!-- Tool Styles -->
    @foreach(\Laravel\Nova\Nova::availableStyles(request()) as $name => $path)
    <link rel="stylesheet" href="/nova-api/styles/{{ $name }}">
    @endforeach

    <!-- Custom Meta Data -->
    @include('nova::partials.meta')

    <!-- Theme Styles -->
    @foreach(\Laravel\Nova\Nova::themeStyles() as $publicPath)
    <link rel="stylesheet" href="{{ $publicPath }}">
    @endforeach
</head>

<body class="min-w-site bg-40 text-90 font-medium min-h-full" @if(app()->getLocale() == 'ar') style="direction:rtl" @endif>
    <div id="nova">
        <div v-cloak class="flex min-h-screen">
            <!-- Sidebar -->
            <div class="min-h-screen flex-none pt-header min-h-screen w-sidebar bg-grad-sidebar px-6">
                <a href="{{ \Laravel\Nova\Nova::path() }}" class="text-white">
                    <div class="absolute pin-t pin-l pin-r bg-logo flex items-center w-sidebar h-header px-6 text-white">
{{--                        @include('nova::partials.logo')--}}

                        <span class="text-white sidebar-label">{{\App\General\GeneralSettings::first()['site_'.app()->getLocale()]}}</span>
                        <img src="{{isset(\App\General\GeneralSettings::first()->logo)?\App\General\GeneralSettings::first()->logo:''}}"class="rounded-full w-8 h-8 @if(app()->getLocale() == 'ar') mr-3  @else ml-3 @endif"/>
                    </div>
                </a>

                @foreach (\Laravel\Nova\Nova::availableTools(request()) as $tool)
                {!! $tool->renderNavigation() !!}
                @endforeach
            </div>

            <!-- Content -->
            <div class="content">
                <div class="flex items-center relative shadow h-header bg-white z-20 px-view">
                    <a v-if="@json(\Laravel\Nova\Nova::name() !== null)" href="{{url('/dashboard')}}" class="no-underline dim font-bold text-90 @if(app()->getLocale() == 'ar') ml-6 @else mr-6 @endif">
                        <!-- {{ \Laravel\Nova\Nova::name() }} -->
                        {{\App\General\GeneralSettings::first()['site_'.app()->getLocale()]}}
                    </a>

                    @if (count(\Laravel\Nova\Nova::globallySearchableResources(request())) > 0)
                    <global-search dusk="global-search-component"></global-search>
                    @endif

                    <dropdown class=" @if(app()->getLocale() == 'ar' ) mr-auto @else ml-auto @endif h-9 flex items-center dropdown-right" style="@if(app()->getLocale() == 'ar') float:right @else float:left @endif">
                        @include('nova::partials.user')
                    </dropdown>

                    <switch-locale-dropdown class="ml-6"></switch-locale-dropdown>
                </div>

                <div data-testid="content" class="px-view py-view mx-auto">
                    @yield('content')

                    @include('nova::partials.footer')
                </div>
            </div>
        </div>
    </div>

    <script>
        window.config = @json(\Laravel\Nova\Nova::jsonVariables(request()));
    </script>

    <!-- Scripts -->
    <script src="{{ mix('manifest.js', 'vendor/nova') }}"></script>
    <script src="{{ mix('vendor.js', 'vendor/nova') }}"></script>
    <script src="{{ mix('app.js', 'vendor/nova') }}"></script>

    <!-- Build Nova Instance -->
    <script>
        window.Nova = new CreateNova(config)
    </script>

    <!-- Tool Scripts -->
    @foreach (\Laravel\Nova\Nova::availableScripts(request()) as $name => $path)
    @if (\Illuminate\Support\Str::startsWith($path, ['http://', 'https://']))
    <script src="{!! $path !!}"></script>
    @else
    <script src="/nova-api/scripts/{{ $name }}"></script>
    @endif
    @endforeach

    <!-- Start Nova -->
    <script>
        Nova.liftOff()
    </script>
</body>

</html>
