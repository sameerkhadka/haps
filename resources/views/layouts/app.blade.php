    <!DOCTYPE html>
    <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            @yield('title')
            @include('includes.head')
            @yield('css')
        </head>

        <body>
            @include('includes.header')
            @yield('body')
            @include('includes.footer')
            @include('includes.foot')
            @yield('javascript')
        </body>
    </html>