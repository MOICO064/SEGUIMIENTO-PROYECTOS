@extends('layouts.main')
@section('content')
<div class="card shadow rounded-4 m-2">
    <div class="card-body">        
        <div class="my-3 d-flex align-items-center justify-content-between">
            <h5 class="card-title font-weight-bold text-primary text-uppercase">Reformulados </h5>
        </div>
        <div class="d-flex flex-wrap flex-lg-nowrap justify-content-center justify-content-md-between justify-content-lg-between gap-3">
            <div class="d-flex gap-2 justify-content-between justify-content-lg-start">
                <form id="perPageForm">
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
            <div>
                <button type="button" class="btn btn-success " data-bs-toggle="modal" data-bs-target="#AddReformulado">
                    REFORMULADO NUEVO
                </button>
            </div>
        </div>
        <div class="table-responsive" id="reformulados">
            @include('director.reformulados.tabla')
        </div>
        <div class="table-responsive" id="reformulados">
            @include('director.reformulados.paginacion')
        </div>
    </div>
</div>
@include('director.modales.editar_reformulado')
<!-- Modal Reformulado-->
<x-modal-registar id="AddReformulado" title="REGISTRAR REFORMULADO" size="modal-md">
    <form id="reformulado">
        @csrf
        <div class="form-floating my-3">
            <input type="date" name="fecha_aprobacion" id="fecha_aprobacion" class="form-control">
            <label for="">Fecha Aprobación</label>
            <div id="fecha_Aprobacion-error" class="invalid-feedback"></div>
        </div>
        <div class="form-floating my-3">
            <input type="date" name="fecha_inicio" id="fecha_inicio" class="form-control">
            <label for="">Fecha Inicio</label>
            <div id="fecha_inicio-error" class="invalid-feedback"></div>
        </div>
        <div class="form-floating my-3">
            <input type="text" name="ley_resolucion" id="ley_resolucion" class="form-control" placeholder>
            <label for="">Ley Resolución</label>
            <div id="ley_resolucion-error" class="invalid-feedback"></div>
        </div>
        <div class="d-flex justify-content-center">
            <button type="button" class="btn btn-danger me-2" data-bs-dismiss="modal">Cancelar</button>
            <button type="submit" class="btn btn-primary">Guardar</button>
        </div>
    </form>
</x-modal-registar>

@endsection
@vite(['resources/js/director/reformulado.js'])
@vite(['resources/js/director/editar_reformulado.js'])
@vite(['resources/js/director/actualizar_reformulado.js'])
@vite(['resources/js/director/buscar_reformulados.js'])