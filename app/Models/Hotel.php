<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Hotel extends Model
{
    protected $table = 'hotels';
    protected $primaryKey = 'id_hotel';

    protected $fillable = ['name','price','star','main_picture','city'];

    public $timestamps = false;
    
    public static $rules = [
        'name'      => 'required',
        'price'     => 'required|numeric',
        'star'     => 'required',
        'picture'   => 'image',
        'city'      => 'required'
    ];

    public function city(){
        return $this->belongsTo(City::class,'city','id_city');
    }

    public function service(){
        return $this->belongsToMany('App\Models\Service');
    }
}