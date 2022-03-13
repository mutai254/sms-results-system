<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\examresult;
use App\student;
use exam;
class examController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $exams = examresult::latest()->paginate(5);
        return view('exam.index', compact('exams'))
                ->with('i',(request()->input('page',1)-1)*5);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
         $students = student::all();
        return view('exam.create', compact('students'));
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
        request()->validate([
            'regNo' => 'required',
            'courseCode' => 'required',
            'courseTitle' => 'required',
            'marks' => 'required',
            'examId' => 'required'
        ]);
        examresult::create($request->all());
            return redirect()->route('exam.index')
        ->with("success","Exam Results Added Successfully!");
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
        $exams = examresult::find($id);
        return view('exam.details', compact('exams'));
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
        $exams = examresult::find($id);
        return view('exam.edit', compact('exams'));
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
        request()->validate([
            'regNo' => 'required',
            'courseCode' => 'required',
            'courseTitle' => 'required',
            'marks' => 'required',
            'examId' => 'required'
        ]);
        $exam = examresult::find($id);
        $exam->regNo = $request->get('regNo');
        $exam->courseCode = $request->get('courseCode');
        $exam->courseTitle = $request->get('courseTitle');
        $exam->marks = $request->get('marks');
        $exam->examId = $request->get('examId');
            $exam->save();
            return redirect()->route('exam.index')
        ->with("success","Exam Results Updated Successfully!");

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
