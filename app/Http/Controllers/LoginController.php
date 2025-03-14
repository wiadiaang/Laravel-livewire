<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LoginController extends Controller
{
    //function to show login page
    public function showLogin(){
        return view('admin.login');
    }

}
