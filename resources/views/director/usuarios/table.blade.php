@if (count($usuarios) > 0)
<table class=" table table-striped table-hover ">
    <thead class="bg-indigo">
        <tr>
            <th>N°</th>
            <th>NOMBRE</th>
            <th>OFICINA</th>
            <th>USUARIO</th>
            <th>ROL</th>
            <th class="text-center">ACCIONES</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($usuarios as $usuario)
        <tr>
            <td>{{$loop->iteration}}</td>
            <td>{{$usuario->name}}</td>
            <td>{{$usuario->oficina}}</td>
            <td>{{$usuario->email}}</td>
            <td>{{$usuario->role}}</td>
            <td class="d-flex gap-2 justify-content-center">
                @if ($usuario->estado === 'activo')
                <a href="{{route('usuario.editar',$usuario->id)}}" class="btn btn-success py-1 px-2">
                    <i class="ri-pencil-fill"></i>
                </a>
                <button type="button" class="btn btn-danger py-1 px-2" data-bs-toggle="modal" data-bs-target="#exampleModal" data-id="{{ $usuario->id }}">
                    <i class="ri-delete-bin-6-line"></i>
                </button>
                @endif
                @if ($usuario->estado === 'inactivo')
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#activate" data-id="{{ $usuario->id }}">
                    Activar
                </button>
                @endif

            </td>
        </tr>
        @endforeach
    </tbody>
</table>
@else
@if ($estado === 'ACTIVOS')

<p class=" font-weight-bold text-center">NO HAY USUARIOS REGISTRADOS</p>
@else
<p class=" font-weight-bold text-center">NO HAY USUARIOS INACTIVOS</p>
@endif

@endif