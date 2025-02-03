@extends('layouts.main')
@section('content')
<div class="card shadow rounded-4 p-3">
    <div class="card-body">
        <a class="btn btn-danger" onclick="history.back()">Atrás</a>
        <h4 class=" font-weight-bold text-primary py-3">ACTAS DE REUNIONES</h4>
        @if (count($actas) > 0)
        <div class="table-responsive">
            <table class=" table table-striped table-hover ">
                <thead class="bg-indigo text-center">
                    <tr>
                        <th>N°</th>
                        <th>Fecha</th>
                        <th>Agenda</th>
                        <th>Compromiso | Responsable</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($actas as $acta)
                    <tr>
                        <td><b>{{ $loop->iteration }} .</b></td>
                        <td>{{$acta->fecha}}</td>
                        <td>@if($acta->agendas->isEmpty())
                            <p class="text-muted">No hay agendas registradas.</p>
                            @else
                            <ul>
                                @foreach ($acta->agendas as $agenda)
                                <li>{{ $agenda->descripcion }}</li>
                                @endforeach
                            </ul>
                            @endif
                        </td>
                        <td>@if($acta->compromisos->isEmpty())
                            <p class="text-muted">No hay compromisos registrados.</p>
                            @else
                            <ul>
                                @foreach ($acta->compromisos as $compromiso)
                                <li>{{ $compromiso->compromiso }} 
                                    |@if(empty($compromiso->responsable))
                                    <span class="text-muted">Sin responsable</>
                                    @else
                                    {{ $compromiso->responsable }}
                                    @endif
                                </li>
                                @endforeach
                            </ul>
                            @endif

                        </td>
                        <td class="d-flex align-items-center gap-2">
                            <a href="{{route('supervisor.acta-editar',$acta->id)}}" class="btn btn-secondary px-2 py-1"><i class="ri-pencil-fill"></i></a>
                            <a href="{{route('acta-vista.pdf',$acta->id)}}" class="btn btn-info">Ver</a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
        </div>
        @else
        <p class="text-center my-3 fw-bold">No existen proyectos de este distrito</p>
        @endif
    </div>
</div>

@endsection