@if (count($reformulados)> 0)
<table class=" table table-striped table-hover table-bo ">
    <thead class="bg-indigo">
        <tr>
            <th>FECHA APROBACIÓN</th>
            <th>FECHA INICIO</th>
            <th>LEY RESOLUCIÓN</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        @foreach ($reformulados as $reformulado)
        <tr>
            <td>{{$reformulado->fecha_aprobacion}}</td>
            <td>{{$reformulado->fecha_inicio}}</td>
            <td>{{$reformulado->ley_resolucion}}</td>
            <td><button class="btn btn-secondary" data-bs-toggle="modal"
                    data-bs-target="#EditReformulado"
                    data-id="{{ $reformulado->id }}"><i class="ri-edit-2-fill"></i>
                </button>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>
@else
<p class=" font-weight-bold text-center">NO EXISTEN REFORMULADOS</p>
@endif