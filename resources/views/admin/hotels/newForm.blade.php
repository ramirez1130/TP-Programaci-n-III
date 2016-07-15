@extends('layouts.main')

@section('title','Nuevo Hotel')

@section('content')
    @if($errors->any())
        <ul class="alert alert-danger">
            @foreach($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    @endif
    <?= Form::open(['route' => 'hotel.new' , 'method' => 'post' ]); ?>
    <div class="form-group col-lg-10">
        <?= Form::label('name', 'Nombre del Hotel:', ['class' => 'control-label']);?>
        <?= Form::text('name', null, ['class' => 'form-control']);?>
    </div>
    <div class="form-group col-lg-2">
        <?= Form::label('price', 'Precio del Hotel:', ['class' => 'control-label']);?>
        <?= Form::text('price', null, ['class' => 'form-control']);?>
    </div>
    <div class="form-group col-lg-1">
        <?= Form::label('star', 'Estrellas:', ['class' => 'control-label']);?>
        <?= Form::number('star', null, ['class' => 'form-control', 'min' => '1' , 'max' => '5']);?>
    </div>
    <div class="form-group col-lg-11">
        <?= Form::label('id_city', 'Ciudad del Hotel:', ['class' => 'control-label']);?>
        <?= Form::select('id_city', $cities , null, ['class' => 'form-control']);?>
    </div>
    <div class="form-group col-lg-12">
        <?= Form::label('description', 'Descripcion:', ['class' => 'control-label']);?>
        <?= Form::textarea('description' , null, ['class' => 'form-control','placeholder'=>'Opcional']);?>
    </div>
    <div class="form-group col-lg-12">
        <?= Form::label('picture', 'Imagen del Hotel:', ['class' => 'control-label']);?>
        <?= Form::file('picture', null, ['class' => 'form-control']);?>
    </div>
    <div class="col-lg-12">
        <?= Form::submit('Crear hotel', ['class' => 'btn btn-primary']); ?>

        <?= link_to_route('hotel.index', 'Volver al listado', [], ['class' => 'btn btn-warning']); ?>
    </div>
    <?= Form::close();?>
@endsection