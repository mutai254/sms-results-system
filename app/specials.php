<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class specials extends Model
{
     
    public function studentSpecials(){
        return $this->belongsTo('App\student');

    }
}
