@if (count($aperturas) > 0)
<table class=" table table-striped table-hover table-bo ">
    <thead class="bg-indigo">
        <tr>
            <th>N°</th>
            <th>Codigo</th>
            <th>Nombre</th>
            <th>Presupuesto</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        @foreach ($aperturas as $apertura)
        <tr>
            <td>{{$loop->iteration}}</td>
            <td>{{$apertura->codigo}}</td>
            <td>{{$apertura->nombre}}</td>
            <td>{{number_format($apertura->presupuesto, 0, ',', '.') .' Bs.'}}</td>
            <td>
                <button class="btn btn-secondary" data-bs-toggle="modal"
                    data-bs-target="#EditApertura"
                    data-id="{{ $apertura->id }}"><i class="ri-edit-2-fill"></i>
                </button>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>
@else
<p class=" font-weight-bold text-center">NO HAY APERTURAS PROGRAMATICAS</>
 @endif