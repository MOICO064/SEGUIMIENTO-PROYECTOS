@extends('layouts.main')
@section('content')
<div class="container">
    <a class="btn btn-danger m-3" onclick="history.back()">Atrás</a>
    <div class="card shadow p-4">
        <div class="card-body">
            <div class="d-flex align-items-center justify-content-between">
                <div>
                    <img src="{{asset('imagenes/logo.png')}}" alt="">
                    <div class="my-3 fw-bold margen-up py-2 ">GESTIÓN: Ing. Nelson Gallinate Torrico</div>
                </div>
                @if (empty($otb))
                <div>
                    <h2>Reporte de Proyectos </h2>
                    <h5 class="fw-bold">Distrito - {{$distritoId}} </h5>
                    <h5 class="fw-bold">{{$fechaInicio}} <span class="mx-3 ">a</span> {{$fechaFinal}}</h5>
                </div>
                @else
                <div>
                    <h2 class="fw-bold">Reporte de Proyectos </h2>
                    <h5 class="fw-bold">Distrito - {{$distritoId}} </h5>
                    <h5 class="fw-bold">OTB - {{$otb}}</h5>
                    <h5 class="fw-bold">{{$fechaInicio}} <span class="mx-3 ">a</span> {{$fechaFinal}}</h5>
                </div>
                @endif
            </div>
            <div class="table-responsive mt-5">
                <table class="table table-bordered text-center">
                    <thead class="bg-indigo">
                        <tr>
                            <th>OTB</th>
                            <th>Proyecto</th>
                            <th>Porcentaje Avance</th>
                            <th>Inversion</th>
                            <th>Fin Plazo</th>
                            <th>Contratista</th>
                            <th>Supervisor</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($proyectos as $proyecto)
                        <tr>
                            <td>{{$proyecto->otb}}</td>
                            <td>{{$proyecto->nombre}}</td>
                            <td>{{$proyecto->porcentaje_avance}} %</td>
                            <td>{{ number_format($proyecto->presupuesto, 0, ',', '.') }} Bs.</td>
                            <td>{{$proyecto->fecha_finalizacion}}</td>
                            <td>{{$proyecto->adjudicatario}}</td>
                            <td>{{$proyecto->supervisor}}</td>
                        </tr>
                        @endforeach
                        <tr>
                            <td colspan="3" class="text-end fw-bold">TOTAL</td>
                            <td colspan="4" class="text-start">{{ number_format($presupuestoTotal, 0, ',', '.') }} Bs.</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="d-flex justify-content-center my-4">
        <form action="{{route('generar.reporte.pdf')}}" method="POST">
            @csrf
            <input type="hidden" name="distrito_id" value="{{ $distritoId }}">
            <input type="hidden" name="otb" value="{{ $otb }}">
            <input type="hidden" name="fecha_inicio" value="{{ $fechaInicio }}">
            <input type="hidden" name="fecha_final" value="{{ $fechaFinal }}">
            <button type="submit" class="btn btn-primary">Descargar PDF</button>
        </form>
    </div>
</div>
@endsection