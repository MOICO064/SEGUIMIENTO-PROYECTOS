@extends('layouts.main')
@section('content')
<div class="card shadow rounded-4 m-2">
    <div class="card-body">
        <div class="my-3 d-flex align-items-center justify-content-between">
            <h5 class="card-title font-weight-bold text-primary "> APERTURAS PROGRAMATICAS</h5>
        </div>
        <div class="d-flex flex-wrap flex-lg-nowrap justify-content-center justify-content-md-between justify-content-lg-between my-3">
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
                <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#AddApertura">
                    APERTURA NUEVA
                </button>
            </div>
        </div>
        <div class="table-responsive" id="aperturas">
            @include('director.aperturas.tabla')
        </div>
        <div class="table-responsive" id="paginacion">
            @include('director.aperturas.paginacion')
        </div>
    </div>
</div>
<!-- Modal Apertura-->
<x-modal-registar id="AddApertura" title="REGISTRAR APERTURA" size="modal-md">
    <form id="apertura">
        @csrf
        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="codigo" name="codigo" placeholder="Escribe el codigo de la apertura" oninput="this.value = this.value.toUpperCase();">
            <label for="codigo" class="form-label">CODIGO</label>
            <div id="codigo-error" class="invalid-feedback"></div>
        </div>
        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="nombre" name="nombre" placeholder="" oninput="this.value = this.value.toUpperCase();">
            <label for="nombre" class="form-label">NOMBRE</label>
            <div id="nombre-error" class="invalid-feedback"></div>
        </div>
        <div class="form-floating mb-3">
            <input type="number" class="form-control" id="presupuesto" name="presupuesto" placeholder="">
            <label for="presupuesto" class="form-label">PRESUPUESTO </label>
            <div id="presupuesto-error" class="invalid-feedback"></div>
        </div>
        <div class="d-flex justify-content-center">
            <button type="button" class="btn btn-danger me-2" data-bs-dismiss="modal">Cancelar</button>
            <button type="submit" class="btn btn-primary">Guardar</button>
        </div>
    </form>
</x-modal-registar>
@include('director.modales.editar_apertura')
@endsection
@section('scripts')
<script src="{{asset('js/director/editar_apertura.js')}}"></script>
<script src="{{asset('js/director/buscar_aperturas.js')}}"></script>
<script src="{{asset('js/director/actualizar_apertura.js')}}"></script>
<script src="{{asset('js/director/apertura.js')}}"></script>
@endsection
