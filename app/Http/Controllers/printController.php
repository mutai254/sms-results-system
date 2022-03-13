<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\student;
use App\parents;

class printController extends Controller
{
    //
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function print()
    {
        //fetch stud
        $students = student::all();
        return view('student.print', compact('students'));
    }
}
