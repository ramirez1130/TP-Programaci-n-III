<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    protected $table = 'services';
    protected $primaryKey = 'id_service';

    public function hotels(){
        return $this->belongsToMany('App\Models\Hotel');
    }
}