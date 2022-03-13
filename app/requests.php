<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class requests extends Model
{
    protected $fillable = [
        'id',
        'sender',
        'shortCode',
    ];
    public function responses(){
        return $this->hasMany(responses::class);

    }
}
