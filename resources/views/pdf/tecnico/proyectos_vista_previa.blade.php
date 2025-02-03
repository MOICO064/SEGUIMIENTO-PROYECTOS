@extends('layouts.main')
@section('content')
<div class="container">
    <a class="btn btn-danger my-3" onclick="history.back()">Atrás</a>
    <div class="card shadow p-4">
        <div class="card-body">
            <div class="d-flex align-items-center justify-content-between">
                <div>
                    <img src="{{asset('imagenes/logo.png')}}" alt="">
                    <div class="my-3 fw-bold margen-up py-2 ">GESTIÓN: Ing. Nelson Gallinate Torrico</div>
                </div>
                <div>
                    <h2 class="fw-bold">Reporte de Proyectos </h2>
                    <h5 class="fw-bold text-uppercase">a cargo de "{{auth()->user()->name}}"  </h5>
                    
                </div>
            </div>
            <div class="table-responsive">
                @if (count($proyectos) > 0)
                <table class=" table table-striped table-hover ">
                    <thead class="bg-indigo">
                        <tr>
                            <th>N°</th>
                            <th>Proyecto</th>
                            <th>Presupuesto</th>
                            <th>Fecha Inicio</th>
                            <th>Fecha Fin</th>
                            <th>Avance Fisico</th>
                            <th>Contratista</th>
                            <th>Ultimo Avance</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($proyectos as $proyecto)
                        <tr>
                            <td>{{$loop->iteration}}</td>
                            <td>{{$proyecto->nombre}}</td>
                            <td class="{{ empty($proyecto->presupuesto) ? 'text-muted' : '' }} text-center">
                                {{ empty($proyecto->presupuesto) ? 'Sin presupuesto' : number_format($proyecto->presupuesto, 0, ',', '.') .' Bs.' }}
                            </td>
                            <td class="{{ empty($proyecto->fecha_orden_proceder) ? 'text-muted' : '' }}">
                                {{ empty($proyecto->fecha_orden_proceder) ? 'Sin fecha de inicio' : $proyecto->fecha_orden_proceder }}
                            </td>
                            <td class="{{ empty($proyecto->fecha_finalizacion) ? 'text-muted' : '' }}">
                                {{ empty($proyecto->fecha_finalizacion) ? 'Sin fin de plazo' : $proyecto->fecha_finalizacion }}
                            </td>
                            <td class="text-center">{{ empty($proyecto->porcentaje_avance) ? '0' : $proyecto->porcentaje_avance }} %</td>
                            <td>{{$proyecto->adjudicatario}}</td>
                            <td class="{{ empty($proyecto->fecha_avance) ? 'text-muted' : '' }}">
                                {{ empty($proyecto->fecha_avance) ? 'Sin avance' : $proyecto->fecha_avance }}
                            </td>            
                        </tr>
                        @endforeach
                        <tr>
                            <td colspan="2" class="text-end fw-bold">TOTAL</td>
                            <td colspan="7" class="text-start" id="presupuestoTotal">
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
        <form action="{{route('tecnico.descargar-reporte',auth()->user()->name)}}" method="POST">
            @csrf
            <input type="hidden" name="perPage" value="{{$perPage}}">
            <input type="hidden" name="searchTerm" value="{{$searchTerm}}">
            <button type="submit" class="btn btn-primary">Descargar PDF</button>
        </form>
    </div>
</div>
@endsection