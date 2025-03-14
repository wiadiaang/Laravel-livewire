<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('layouts.admin');
});
Route::get('/login', function () {
    return view('admin.login');
});

Route::get('/info', function () {
    dd(phpinfo());
});
