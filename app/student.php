<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class student extends Model
{
     
    public function student(){
        return $this->belongsTo('App\parents');

    }
    public function studentSpecials(){
        return $this->hasMany(specials::class);

    }
    public function studentFee(){
        return $this->hasMany(fee::class);

    }
    public function studentExam(){
        return $this->hasMany(examresult::class, 'regNo','regNo');

    }
    protected $fillable = ['regNo', 'idNo', 'phoneNo', 'email', 'surName', 'otherName', 'parentPhone', 'yos'];
}
