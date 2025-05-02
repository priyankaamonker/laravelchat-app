<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Laravel Chat app</title>
        <link href="https://cdn.jsdelivr.net/npm/flowbite@3.1.2/dist/flowbite.min.css" rel="stylesheet" />
    </head>
    <body>
        <nav class="bg-white border-gray-500 dark:bg-gray-200">
            <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
                <span class="self-center text-2xl font-semibold whitespace-nowrap dark:text-black">Laravel Chat App</span>
                @if (Route::has('login'))
                <div class="hidden w-full md:block md:w-auto" id="navbar-default">
                    <ul class="font-medium flex flex-col p-4 md:p-0 mt-4 border border-gray-100 rounded-lg md:flex-row md:space-x-8 rtl:space-x-reverse md:mt-0 md:border-0 dark:border-gray-700">
                        @auth
                        <li><a href="{{ url('/home') }}" class="block py-2 px-3 text-black rounded-sm md:bg-transparent md:p-0 dark:text-black" aria-current="page">Home</a></li>
                        @else
                        <li><a href="{{ url('/login') }}" class="block py-2 px-3 text-black rounded-sm md:bg-transparent md:p-0 dark:text-black" aria-current="page">Log in</a></li>
                        @if (Route::has('register'))
                        <li><a href="{{ url('/register') }}" class="block py-2 px-3 text-black rounded-sm md:bg-transparent md:p-0 dark:text-black" aria-current="page">Register</a></li>
                        @endif
                    @endauth
                    </ul>
                </div>
                @endif
            </div>
        </nav>



    </body>
</html>
