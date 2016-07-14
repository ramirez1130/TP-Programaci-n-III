<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/hotels',[
    'as'    => 'hotel.index',
    'uses'  => 'HotelsController@index'
]);

//Formulario para nuevo hotel
Route::get('hotels/new',[
    'as'    => 'hotel.newForm',
    'uses'  => 'HotelsController@newHotelForm'
]);

Route::post('hotels/new',[
    'as'    => 'hotel.new',
    'uses'  => 'HotelsController@newHotel'
]);

Route::get('hotels/{id}/edit', [
    'as' => 'hotel.editForm',
    'uses' => 'HotelsController@editForm'
])->where('id', '\d+');

Route::put('hotels/{id}/edit',[
    'as'    => 'hotel.edit',
    'uses'  => 'HotelsController@edit'
])->where('id', '\d+');

Route::delete('hotels/{id}/delete',[
    'as'    => 'hotel.delete',
    'uses'  => 'HotelsController@delete'
])->where('id', '\d+');;
