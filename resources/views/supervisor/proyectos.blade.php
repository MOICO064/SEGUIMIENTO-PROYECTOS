@extends('layouts.main')
@section('content')
<div class="container">
    <div class="card shadow rounded-4">
        <div class="card-body">
            <h4 class="font-weight-bold text-primary py-2">PROYECTOS DEL DISTRITO "{{$dis}}"</h4>
            <div class="row align-items-center my-2 justify-content-between">
                <div class="col col-12 col-lg-8 ">
                    <div class="d-flex gap-2 justify-content-between justify-content-lg-start">
                        <form id="perPageForm">
                            <input type="text" id="distrito" value="{{$dis}}" hidden>
                            <select name="perPage" id="perPage" class="form-select">
                                <option value="10" {{ request('perPage') == 10 ? 'selected' : '' }}>10</option>
                                <option value="25" {{ request('perPage') == 25 ? 'selected' : '' }}>25</option>
                                <option value="50" {{ request('perPage') == 50 ? 'selected' : '' }}>50</option>
                                <option value="100" {{ request('perPage') == 100 ? 'selected' : '' }}>100</option>
                            </select>
                        </form>
                        <form id="searchForm">
                            <input type="text" id="search" name="search" class="form-control" placeholder="Buscar proyectos" value="{{ request('search') }}">
                        </form>
                    </div>
                </div>
                <div class="col col-12 col-lg-4 text-center text-lg-end">
                    <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#Reporte">
                        GENERAR REPORTE
                    </button>
                </div>
            </div>
            @if (count($proyectos) > 0)
            <div class="table-responsive" id="tablaProyectos">
                @include('proyectos.table', ['proyectos' => $proyectos])
            </div>
            <div id="paginacion" class="table-responsive">
                @include('proyectos.pagination')
            </div>
            @else
            <p class="text-center my-3 fw-bold">No existen proyectos de este distrito</p>
            @endif
        </div>
    </div>
</div>
<x-modal-registar id="Reporte" title="GENERAR REPORTE" size="modal-md">
    <p class="text-muted">Eliga la OTB, en caso de querer un reporte de una OTB especifica</p>
    <form action="{{route('generar.reporte')}}" method="Post">
        @csrf
        <div class="form-floating my-3">
            <input type="text" name="distrito_id" id="distrito_id" value="{{$dis}}" hidden>
            <select name="otb" id="otb" class="form-select">
                <option value="">Seleccione una OTB</option>
            </select>
            <label for="otb">OTB</label>
        </div>
        <div cols="form-floating my-3">
            <input type="date" name="fecha_inicio" id="fecha_inicio" class="form-control" required>
            <label for="fecha_inicio">Fecha Inicio</label>
        </div>
        <div class="form-floating my-3">
            <input type="date" name="fecha_final" id="fecha_final" class="form-control" required>
            <label for="">Fecha Final</label>
        </div>
        <div class="d-flex align-items-center justify-content-center gap-2 my-3">
            <button type="submit" class="btn btn-primary">GENERAR</button>
            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">CANCELAR</button>
        </div>
    </form>
</x-modal-registar>
@endsection
@vite(['resources/js/supervisor/cargar_otb.js'])
@vite(['resources/js/supervisor/proyectos.js'])