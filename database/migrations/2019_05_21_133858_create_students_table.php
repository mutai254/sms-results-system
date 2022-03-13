<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStudentsTable extends Migration
{
    /*
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('students', function (Blueprint $table) {
            $table->bigIncrements('id')->unique();
            $table->string('regNo',15)->unique();
            $table->integer('idNo')->length(10)->unsigned();
            $table->string('phoneNo',14)->unique();
            $table->string('email',65)->unique();
            $table->string('surName',65);
            $table->string('otherName',65);
            $table->string('parentPhone',14)->references('phoneNo')->on('parents');;
            $table->integer('yos')->length(4)->unsigned();
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
        Schema::dropIfExists('students');
    }
}
