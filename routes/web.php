<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('layouts.admin');
});

Route::get('/info', function () {
    dd(phpinfo());
});
