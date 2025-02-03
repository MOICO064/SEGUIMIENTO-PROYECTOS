@extends('layouts.main')
@section('content')
<div class="d-lg-flex align-items-center text-center justify-content-between px-4">
    <h2 class="text-primary text-center my-3">OTBs del Distrito "{{$distrito}}"</h2>
    @if(auth()->user()->role === 'Supervisor')
    <a href="{{ route('supervisor.acta',$distrito) }}" class="btn btn-success">Nueva Acta</a>
    @endif
</div>
<div class="d-flex flex-wrap gap-3 justify-content-center my-4">
    @foreach($otbs as $otb)
    <a href="{{route('supervisor.actas',$otb )}}" class="text-decoration-none text-muted ">
        <div class="card shadow otb" style="width: 18rem;">
            <img src="{{ asset('imagenes/'.$distrito.'/'.$otb.'.jpg') }}" class="card-img-top img-cover" alt="Imagen predeterminada">
            <div class="card-body">
                <p class="text-center fw-bold ">{{$otb}}</p>
            </div>
        </div>
    </a>
    @endforeach
</div>
@endsection