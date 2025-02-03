<div class="table-responsive">
    <table class="table table-striped table-hover text-start">
        <thead class="bg-indigo text-center">
            <tr>
                <th>OTB</th>
                <th>Proyecto</th>
                <th>Gestión</th>
                <th>Planillas</th>
                <th>Porcentaje de avance</th>
                <th>Inversión en Bs.</th>
                <th>Fin de plazo</th>
                <th>Contratista</th>
                <th>Supervisor</th>
            </tr>
        </thead>
        <tbody>
            @if ($proyectos->isNotEmpty())
            @foreach ($proyectos as $proyecto)
            <tr>
                <td>{{ $proyecto->otb }}</td>
                <td>{{ $proyecto->nombre }}</td>
                <td>{{ \Carbon\Carbon::parse($proyecto->fecha_orden_proceder)->format('Y') }}</td>
                <td>
                    @if ($proyecto->planillas->isNotEmpty())                    
                    @foreach ($proyecto->planillas as $planilla) 
                    <b>-</b> {{ $planilla->nombre }}
                    @endforeach
                    @else
                    <span class="text-muted">No hay planillas registradas</span>
                    @endif
                </td>
                <td class="text-center">{{ $proyecto->porcentaje_avance }} %</td>
                <td>{{ number_format($proyecto->presupuesto, 0, ',', '.') }} Bs.</td>
                <td>{{ $proyecto->fecha_finalizacion }}</td>
                <td>{{ $proyecto->adjudicatario }}</td>
                <td>{{ $proyecto->supervisor }}</td>
            </tr>
            @endforeach
            <tr>
                <td colspan="5" class="text-end fw-bold">TOTAL</td>
                <td colspan="5" class="text-start" id="presupuestoTotal">
                    {{ number_format($presupuestoTotal, 0, ',', '.') }} Bs.
                </td>
            </tr>
            @else
            <tr>
                <td colspan="9" class="text-center">
                    NO EXISTE NINGUN PROYECTO
                </td>
            </tr>
            @endif
        </tbody>
    </table>
</div>