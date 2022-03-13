<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class fee extends Model
{
    
    public function studentFee(){
        return $this->belongsTo('App\student');

    }
}
