@extends('layouts.main')
@section('content')
<div class="card shadow rounded-4 m-2">
    <div class="card-body">
        <h5 class=" font-weight-bold text-primary py-3">PROYECTOS ASIGNADOS A "{{auth()->user()->name}}" </h5>
        @if ($proyectos->count()>0)
        <div class="row align-items-center my-2 justify-content-between">
            <div class="col col-12 col-lg-8 ">
                <div class="d-flex gap-2 justify-content-between justify-content-lg-start">
                    <form id="perPageForm">
                        <input type="text" id="supervisor" value="{{auth()->user()->name}}" hidden>
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
                <form id="reporte" action="{{route('tecnico.reportes-proyectos',auth()->user()->name)}}" method="POST">
                    @csrf        
                    <input type="hidden" id="paginas" name="paginas">
                    <input type="hidden" name="palabra" id="palabra">
                    <button class="btn btn-success">GENERAR REPORTE</button>
                </form>
            </div>
        </div>
        @endif
        <div class="table-responsive" id="proyectos">
            @include('tecnico.proyectos.tabla')
        </div>

        <div id="paginacion" class="table-responsive">
            @include('proyectos.pagination')
        </div>
    </div>
</div>
@endsection
@vite(['resources/js/tecnico/buscador.js'])
@vite(['resources/js/tecnico/reporte.js'])