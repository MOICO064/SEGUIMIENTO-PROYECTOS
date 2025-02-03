@extends('layouts.main')
@section('content')
<div class="container">
    <a class="btn btn-danger my-3" onclick="history.back()">Atrás</a>
    <div class="card shadow p-4">
        <div class="card-body">
            <div class="d-flex align-items-center justify-content-between gap-3">
                <div>
                    <img src="{{asset('imagenes/logo.png')}}" alt="">
                    <div class="my-3 fw-bold margen-up py-2 ">GESTIÓN: Ing. Nelson Gallinate Torrico</div>
                </div>
                <div>
                    <h2 class="fw-bold text-uppercase">Reporte de Avances </h2>
                    <h5 class="fw-bold text-uppercase">del proyecto "{{$proyecto->nombre}}"</h5>
                    <h6 class="fw-bold text-uppercase">supervisor a cargo: {{$proyecto->supervisor}}</h6>                    
                </div>
            </div>
            <div class="table-responsive">
                @if (count($avances) > 0)
                <table class=" table table-striped table-hover ">
                    <thead class="bg-indigo">
                        <tr>
                            <th>N°</th>
                            <th>FECHA</th>
                            <th>DESCRIPCION</th>
                            <th>PORCENTAJE AVANCE </th>
                            <th>OBSERVACIONES</th>
                            <th>MONTO CERTIFICADO</th>                         
                        </tr>
                    </thead>
                    <tbody>         
                        @foreach ($avances as $avance)
                        <tr>
                            <td>{{$loop->iteration}}</td>
                            <td>{{$avance->fecha}}</td>
                            <td class="{{$avance->descripcion??'text-muted'}}">{{$avance->descripcion??'Sin Descripción'}} </td>
                            <td class="text-center">{{$avance->porcentaje_avance}} %</td>
                            <td class="{{$avance->observacion??'text-muted'}}">{{$avance->observacion??'Sin observaciones'}}</td>
                            <td>{{number_format($avance->monto_certificado, 0, ',', '.') }} Bs.</td>
                        </tr>
                        @endforeach           
                        <tr>
                            <td colspan="5" class="text-end fw-bold">TOTAL</td>
                            <td colspan="1" class="text-start" id="presupuestoTotal">
                                {{ number_format($presupuestoTotal, 0, ',', '.') }} Bs.
                            </td>
                        </tr>
                    </tbody>
                </table>

                @else
                <p class=" font-weight-bold text-center">NO HAY PROYECTOS A CARGO</>
                    @endif
            </div>
        </div>
    </div>
    <div class="d-flex justify-content-center my-4">
        <a href="{{route('tecnico.descargar-avances',$proyecto->id)}}" class="btn btn-primary">Descargar PDF</a>
    </div>
</div>
@endsection