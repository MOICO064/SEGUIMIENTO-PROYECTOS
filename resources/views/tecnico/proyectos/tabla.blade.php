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
            <th></th>
        </tr>
    </thead>
    <tbody>
        @foreach ($proyectos as $proyecto)
        <tr>
            <td>{{$loop->iteration}}</td>
            <td>{{$proyecto->nombre}}</td>
            <td class="{{ empty($proyecto->presupuesto) ? 'text-muted' : '' }}">
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
            <td class="d-flex gap-2 flex-lg-nowrap flex-md-nowrap flex-wrap ">
                <a href="{{route('tecnico.proyecto.avances',$proyecto->id)}}" class="btn btn-success ">Avances</a>
                <a href="{{route('tecnico.editar-proyecto',$proyecto->id)}}" class="btn btn-secondary "> <i class="ri-pencil-fill"></i> </a>
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