<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    protected $table = 'cities';
    protected $primaryKey = 'id_city';

    public function country(){
        return $this->belongsTo('App\Models\Country');
    }
    
    public function hotel(){
        return $this->hasMany(Hotel::class);
    }
}