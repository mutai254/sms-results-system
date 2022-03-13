<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\requests;
use App\parents;
use App\responses;
use App\student;
use App\examresult;
// require SDK here
use AfricasTalking\SDK\AfricasTalking;
use Log;

class smsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }
    public function index()
    {
        //fetch stud
        $requests = requests::all(); //latest()->paginate(5);
        return view('sms.index', compact('requests'))
                ->with('i');//,(request()->input('page',1)-1)*5);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('sms.create');
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
        $request->validate([
            'regNo' => 'required',
            'idNo' => 'required', 
            'phoneNo' => 'required',
            'email' => 'required',
            'surName' => 'required',
            'otherName' => 'required',
            'parentPhone' => 'required',
            'yos' => 'required'
        ]);
            requests::create($request->all());
            return redirect()->route('sms.index')
        ->with("success","New requests Added Successfully!");
         
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
         $requests = requests::find($id);
        return view('sms.details', compact('requests'));
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
        $requests = requests::find($id);
        return view('sms.edit', compact('requests'));
    }

    /**
     * Update the specified resource in storage.
    
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $request->validate([
            'regNo' => 'required',
            'idNo' => 'required', 
            'phoneNo' => 'required',
            'email' => 'required',
            'surName' => 'required',
            'otherName' => 'required',
            'parentPhone' => 'required',
            'yos' => 'required'
        ]);
            $requests = requests::find($id);
            $requests->regNo = $request->get('regNo');
            $requests->idNo = $request->get('idNo'); 
            $requests->phoneNo = $request->get('phoneNo');
            $requests->email= $request->get('email');
            $requests->surName = $request->get('surName');
            $requests->otherName = $request->get('otherName');
            $requests->parentPhone = $request->get('parentPhone');
            $requests->yos = $request->get('yos');
            $requests->save();
            return redirect()->route('sms.index')
        ->with("success","requests Updated Successfully!");

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
        $requests = requests::find($id);
         $requests->delete();
            return redirect()->route('sms.index')
        ->with("success","SMS Deleted Successfully!");
    }
    //incoming sms
    public function messageIn(Request $request)
    {
        try {
            $text = $request->text;
            $from = $request->from;
            $to = $request->to;
            $id = $request->id;
            $start='';
            $end='';
            Log::info($request);
            //insert into request
            $incoming = new requests();
            $incoming->sender = $from;
            $incoming->shortCode = $text;
            $incoming->save();
            if(strtolower($text) == 'results' || strtolower($text) == 'result') {
                //get student
                $student = student::where('phoneNo','LIKE','%'.$from)->orWhere('parentPhone','LIKE','%'.$from)->first();
                //get results
                if($student) {
                    $start = "MKU results for student ".$student->surName;
                    $end = " \nType HELP or call/SMS 0723411264.";
                    $content='';
                    $res = examresult::where('regNo', $student->regNo)->get();
                    if(count($res) > 0) {
                        $result_arr=[];
                        //result
                         foreach($res as $result){
                            $grade ='';
                            if($result->marks > 40) {
                                $grade = 'Pass';
                            } else {
                                $grade = 'Fail';
                            }
                            array_push($result_arr,$result->courseCode." - ".$result->marks."(".$grade.")");
                        }
                        $content = " ".str_replace(['"','[',']'],'',json_encode($result_arr));
                    }
                    else {
                        //no result
                        $content = " Sorry! No result for student ".$student->surName. " or Registration ".$student->regNo;
                    }
                }
                else {
                    //no studend
                    $content = "Sorry! No student/parent with that phone number.";
                }
                $message = $start.$content.$end;
            }
            //check is help
            else if(strtolower($text) == 'help') {
                $message="Type RESULTS, to view current results.
Type REASON to know why you have no results.";
            }
            else if(strtolower($text) == 'reason') {
                $message="Reasons for unavailability of exams can be fee balances or pending specials.";
            }
            else {
                $message="INVALID QUERY.
                Type RESULTS, to view current results.
Type REASON to know why you have no results.";
            }
            
            Log::info($message);
            $this->sendSMS($from,$message);
            return 'sucess';
        } catch (\Throwable $th) {
            Log::error($th);
            return 'error';
        }
    }
    //send sms
    public function sendSMS($phone,$message)
    {
        $username= 'sandbox';
        $apiKey= 'f95fe274b9bf1e18e793cdb0d381853978e7cf4e5edf18a0bc18e0707e177fd8';
        // Initialize the SDK
        $AT       = new AfricasTalking($username, $apiKey);
        //Get the airtime service
        $sms  = $AT->sms();
        $from = '2182';
        $results = $sms->send([
            "from" => $from,
            "to"  => $phone,
            "message"       => $message,
        ]);
        Log::info($results);
        //if no error message
        if($results['data']->SMSMessageData->Recipients[0]->messageId != 'None')
        {
            //update requestId
            if($results['data']->SMSMessageData->Recipients[0]->status == "Success" || $results['data']->SMSMessageData->Recipients[0]->status == "Sent")
            {
                //success
            }
            else
            {
                //fail
            }
        }
        else
        {
            //fail
            $failed_reason =$results['data']->SMSMessageData->Recipients[0]->status;
        }
    }
}
