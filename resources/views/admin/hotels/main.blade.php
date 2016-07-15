
@extends('layouts.main')

@section('title','Hoteles')

@section('content')
    <table class="table table-bordered">
        <tr>
            <th>Nombre</th>
            <th>Precio</th>
            <th>Estrellas</th>
            <th>Rating</th>
            <th>Ciudad</th>
            <th>Acciones</th>
        </tr>
        @foreach($hotels as $hotel)
            <tr>
                <td>{{$hotel->name}}</td>
                <td>${{$hotel->price}}</td>
                <td>{{$hotel->star}}</td>
                <td>{{$hotel->rating}}</td>
                <td>{{$hotel->city->name}}</td>
                <td>
                    <div class="col-lg-6">
                        <?= link_to_route('hotel.editForm', '',[$hotel->id_hotel],['class'=>'fa fa-pencil-square-o action']) ?>
                    </div>
                    <div class="col-lg-6">
                        <?= Form::open(['route' => ['hotel.delete', $hotel->id_hotel], 'method' => "delete"]);?>
                            <button type="submit" class="fa fa-times action" aria-hidden="true"></button>
                        <?= Form::close(); ?>
                    </div>
                </td>
            </tr>
        @endforeach
    </table>
    <?= link_to_route('hotel.newForm', 'Crear nuevo Hotel', [], ['class' => 'btn btn-primary']); ?>
@endsection