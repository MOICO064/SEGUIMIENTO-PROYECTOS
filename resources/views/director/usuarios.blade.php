@extends('layouts.main')
@section('content')
<div class="card shadow rounded-4 m-2">
    <div class="card-body">
        <div class="my-3 d-flex align-items-center justify-content-between">
            <h5 class="card-title font-weight-bold text-primary "> USUARIOS {{$estado}}</h5>

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
                <a href="{{route('director.usuario-nuevo')}}" class="btn btn-success">
                    USUARIO NUEVO
                </a>
            </div>
        </div>
        <div class="table-responsive" id="usuarios">
            @include('director.usuarios.table')
        </div>
        <div class="table-responsive" id="paginacion">
            @include('director.usuarios.pagination')
        </div>
    </div>
</div>

@include('director.modales.eliminar_usuario')
@include('director.modales.activar_usuario')

@endsection
@section('scripts')
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
@if (session('success'))
<script>
    Swal.fire({
        icon: 'success',
        title: '¡Hecho!',
        text: '',
        confirmButtonText: 'OK',
    }).then((result) => {
        if (result.isConfirmed) {
            window.location.href = "{{ route('director.usuarios') }}";
        }
    });;
</script>
@endif
@if ($estado === 'ACTIVOS')

<script src="{{asset('js/director/buscar_usuarios.js')}}"></script>
@endif
@if ($estado === 'INACTIVOS')
<script srv="{{asset('js/director/inactivos.js')}}"> </script>
@endif
<script src="{{asset('js/director/usuario.js')}}"></script>
@endsection
