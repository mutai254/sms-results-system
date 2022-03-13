<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class responses extends Model
{
     
    public function responses(){
        return $this->belongsTo('App\responses');

    }
}
