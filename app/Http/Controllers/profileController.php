<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Foundation\Auth\RegistersUsers;
use Auth;

class profileController extends Controller
{
    //
     public function __construct() 
    { 
        $this->middleware('auth'); 
    } 
    public function profile() 
    { 
        $users = User::all()->where('id', Auth::user()->id); 
        return view('profile',compact('users'));
    }
    public function update(Request $request)
    {
        //$id = Auth::user()->id;
        
        request()->validate([
            'name' => 'required',
            'email' => 'required', 
            'password' => 'required|min:8|confirmed'
        ]);
            $user = User::find(Auth::user()->id);
            $user->name = $request->get('name');
            $user->email = $request->get('email'); 
            $user->password = Hash::make($request->get('password')); 
            $user->update();
            return redirect()->route('profile')
        ->with("success","Profile Updated Successfully!");
    } 

}
