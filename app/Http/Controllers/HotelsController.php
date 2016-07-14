<?php

namespace App\Http\Controllers;


use App\Models\City;
use App\Models\Hotel;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Validator;

class HotelsController extends Controller
{
    public function index(){
        //$hotels = Hotel::with(['city'])->get();
        $hotels = Hotel::all();

        return view('admin/hotels/main', ['hotels' => $hotels] );
    }

    public function newHotelForm(){
        $cities = City::all()->pluck('name','id_city');
        return view("admin/hotels/newForm", ['cities' => $cities]);
    }

    public function newHotel(){
        $input = Input::all();

        $validator = Validator::make($input,Hotel::$rules);

        if( $validator->fails() ){
            return redirect()
                ->route('hotel.newForm')
                ->withInput()
                ->withErrors($validator);
        }

        Hotel::create($input);

        return redirect()->route('hotel.index')
            ->with('message', 'El producto se grabó exitosamente!');
    }

    public function delete($id){
        Hotel::destroy($id);

        return redirect()->route('hotel.index')->with('message', 'El hotel se eliminó de manera correcta');
    }

    public function editForm($id){
        $hotel = Hotel::findOrFail($id);
        $cities = City::all()->pluck('name','id_city');

        return view('admin/hotels/editForm',compact('hotel','cities'));
    }

    public function edit($id){
        $inputs = Input::all();

        $validator = Validator::make($inputs,Hotel::$rules);

        if($validator->fails()) {
            return redirect()->route('hotel.editForm', [$id])
                ->withInput()
                ->withErrors($validator);
        }

        $hotel = Hotel::findOrFail($id);
        $hotel->update($inputs);

        return redirect()->route('hotel.index')
            ->with('message', 'El hotel fue editado exitosamente!');
    }
}