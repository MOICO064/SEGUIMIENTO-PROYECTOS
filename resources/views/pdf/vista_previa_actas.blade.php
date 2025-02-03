@extends('layouts.main')
@section('content')
<div class="container">
    <a class="btn btn-danger m-3" onclick="history.back()">Atrás</a>
    <div class="card shadow p-4">
        <div class="card-body ms-5">
            <div class="d-flex align-items-center justify-content-between">
                <div>
                    <img src="{{asset('imagenes/logo.png')}}" alt="">
                    <div class="my-3 fw-bold margen-up py-2 ">GESTIÓN: Ing. Nelson Gallinate Torrico</div>
                </div>

                <h1 class="fw-bold">ACTA DE REUNIÓN</h1>
            </div>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead class="text-center bg-indigo p-3">
                        <tr>
                            <th colspan="2">DATOS DEL ACTA</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td> <b>OTB:</b> {{$acta->otb}}</td>
                            <td class="border-left "><b>N°:</b> {{$acta->id}}</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td class="border-left"> <b>FECHA:</b> {{ \Carbon\Carbon::parse($acta->fecha)->format('d-m-Y') }}</td>

                        </tr>
                        <tr>
                            <td></td>
                            <td class="border-left "><b>LUGAR:</b> <span class="{{$acta->lugar??'text-muted'}}">{{$acta->lugar??'No definido'}}</span></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td class="border-left "> <b>HORA:</b> <span class="{{$acta->hora??'text-muted' }}">{{ $acta->hora??'No definido' }}</span> </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead class="text-center bg-indigo p-3">
                        <tr>
                            <th colspan="2">AGENDA</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($acta->agendas as $agenda)
                        <tr class="border">
                            <td class="p-2">
                                {{ $agenda->descripcion }}
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead class="bg-indigo">
                        <tr>
                            <th class="p-2">NOTAS</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="p-2 {{ $acta->notas??'text-muted' }}">
                                {{ $acta->notas??'Sin notas' }}
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead class="bg-indigo">
                        <tr class="border">
                            <th colspan="3" class="p-2 text-center">CONCLUSIÓN Y/O COMPROMISO</th>
                        </tr>
                        <tr>
                            <th class="p-2 border">COMPROMISO</th>
                            <th class="p-2 border">RESPONSABLE</th>
                            <th class="p-2 border">FECHA</th>
                        </tr>
                    </thead>
                    <tbody>
                        @if (count($acta->compromisos) > 0)
                        @foreach($acta->compromisos as $compromiso)
                        <tr>
                            <td class="p-2 border">{{$compromiso->compromiso}}</td>
                            <td class="p-2 border">{{$compromiso->responsable}}</td>
                            <td class="p-2 border"> {{ \Carbon\Carbon::parse($compromiso->fecha_estimada)->format('d-m-Y') }}</td>
                        </tr>
                        @endforeach
                        @else
                        <tr>
                            <td colspan="2" class="text-muted border p-3 text-center">Sin compromisos</td>
                        </tr>
                        @endif

                    </tbody>
                </table>
            </div>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead class="border bg-indigo">
                        <tr>
                            <th class="border p-2">ASISTENTE</th>
                            <th class="border p-2">FIRMA</th>
                        </tr>
                    </thead>
                    <tbody>
                        @if (count($acta->asistentes) > 0)
                        @foreach($acta->asistentes as $asistente)
                        <tr>
                            <td class="border p-3">{{$asistente->asistente}}</td>
                            <td class="border p-3"></td>
                        </tr>
                        @endforeach
                        @else
                        <tr>
                            <td colspan="2" class="text-muted border p-3 text-center">Sin asistentes</td>
                        </tr>
                        @endif
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="d-flex justify-content-center my-4">
             <a href="{{route('actas.pdf',$acta->id)}}" class="btn btn-primary">DESCARGAR</a>
    </div>
</div>
@endsection