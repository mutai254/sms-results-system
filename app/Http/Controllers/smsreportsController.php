<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\student;
use App\parents;
use App\requests;
use App\exams;
use App\Units;
use Log;
use Auth;

class smsreportsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
     public function __construct()
    {
        $this->middleware('auth');
    }
      public function help()
    {
        return view('help');
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function xtreme()
    {
        $results = student::with(['studentExam'])->get();
        return view('reports.exams', compact('results'));
    }
    public function unitResults(Request $request)
    {
        $id = $request->get('id');
        $results = student::whereHas('studentExam', function($query) use ($id){
            $query->where('courseCode', 'LIKE', '%'.$id.'%');
        })->get();
        return view('reports.unit-results', compact('results','id'));
    }
    
}
