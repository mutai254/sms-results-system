<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateExamresultsTable extends Migration
{
    /*
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('examresults', function (Blueprint $table) {
            $table->bigIncrements('id')->unique();
            $table->string('courseCode',10);
            $table->string('courseTitle',65);
            $table->double('marks',4,2);
            $table->string('regNo',15)->references('regNo')->on('students');;
            $table->integer('examId')->references('id')->on('exams');;
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('examresults');
    }
}
