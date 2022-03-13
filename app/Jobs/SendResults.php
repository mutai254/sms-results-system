<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use App\requests;
use App\responses;
use App\student;
use App\examresult;

class SendResults implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        //
    }
}
CREATE TRIGGER `addres` AFTER INSERT ON `requests`
 FOR EACH ROW IF NEW.shortCode = "RESULTS"
	THEN INSERT INTO responses
    SET responses.recipient = NEW.sender,
    responses.requestId = NEW.id,
    responses.message =CONCAT("KIBU RESULTS For ",(SELECT students.surName FROM students WHERE students.phoneNo = NEW.sender OR  students.parentPhone = NEW.sender), "\n",(SELECT  GROUP_CONCAT(DISTINCT examresults.courseCode, "- " , examresults.marks) FROM students,requests,examresults WHERE students.regNo = examresults.regNo AND students.regNo = (SELECT students.regNo FROM students WHERE students.phoneNo = NEW.sender)  OR  students.regNo = (SELECT students.regNo FROM students WHERE students.parentPhone = NEW.sender)),"\nType HELP or call/SMS 0708058225.");
    ELSEIF NEW.shortCode = "REASON"
    THEN
    INSERT INTO responses
    SET responses.recipient = NEW.sender,
    responses.requestId = NEW.id,
    responses.message =CONCAT("Reasons for unavailability of exams can be    fee balances or pending specials. Your fee balance and special application are shown here:\n",(SELECT DISTINCT fees.balance FROM fees,students,requests WHERE fees.regNo = students.regNo AND students.phoneNo = (SELECT students.phoneNo FROM students WHERE students.parentPhone = NEW.sender)),"KES fee balance.\n");
    ELSEIF NEW.shortCode = "HELP"
    THEN
     INSERT INTO responses
    SET responses.recipient = NEW.sender,
    responses.requestId = NEW.id,
    responses.message =CONCAT("HELP CONTENT\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.\r\n                             Type HELP or call/SMS 0708058225 for more.");
    ELSE
     INSERT INTO responses
    SET responses.recipient = NEW.sender,
    responses.requestId = NEW.id,
    responses.message =CONCAT("INVALID QUERY.\r\n                              Type RESULTS, to view current results.\r\n                              Type REASON to know why you have no results.\r\n                              Type academic year(e.g 2018/2019) to view previous results.\r\n                             Type HELP or call/SMS 0708058225 for more.");
  END IF