@extends('layouts.main')
@section('content')
<div class="card shadow rounded-4 m-2">
    <div class="card-body">
        <h5 class=" font-weight-bold text-primary py-3 text-center text-uppercase">Avances del proyecto "{{$pro->nombre}}" </h5>
        <div class="d-flex gap-2 my-3 flex-wrap  flex-lg-nowrap justify-content-start justify-content-lg-between justify-content-md-between">
            <a href="{{route('tecnico.proyectos',auth()->user()->name)}}" class="btn btn-danger col-auto">Atrás</a>
            <div class="d-flex flex-wrap justify-content-center gap-2">
                @if ($pro->porcentaje_avance<100)
                    <a href="{{route('tecnico.reportar.avance',$pro->id)}}" class="btn btn-secondary ">Reportar Avance</a>
                    @endif
                    <a href="{{route('tecnico.reportes-avances',$pro->id)}}" class="btn btn-success ">GENERAR REPORTES</a>
            </div>
        </div>
        @if (count($avances) > 0)
        <div class="table-responsive">
            <table class=" table table-striped table-hover table-bo text-center">
                <thead class="bg-indigo ">
                    <tr>
                        <th>Fecha</th>
                        <th>Descripción</th>
                        <th>Porcentaje de Avance</th>
                        <th>Observaciones</th>
                        <th>Monto Certificado</th>
                        <th>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($avances as $avance)
                    <tr>
                        <td>{{$avance->fecha}}</td>
                        <td>{{$avance->descripcion??'Sin descripción'}}</td>
                        <td>{{$avance->porcentaje_avance}} %</td>
                        <td>{{ empty($avance->observacion) ? 'Sin Observaciones' : $avance->observacion }}</td>
                        <td>
                            {{number_format($avance->monto_certificado, 0, ',', '.') }} Bs.
                        </td>
                        <td>
                            <a href="{{route('tecnico.editar-avance',$avance->id)}}" class="btn btn-secondary py-1 px-2"><i class="ri-pencil-fill"></i></a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        @else
        <p class="font-weight-bold text-center text-muted">NO HAY AVANCES REGISTRADOS</p>
        @endif

    </div>
</div>
@endsection