<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vista Previa</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            padding: 0;
        }

        .container {
            width: 100%;
            padding: 0 10px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        .title {
            font-size: 20px;
            font-weight: bold;
            text-transform: uppercase;
            padding: 20px;
        }

        .logo {
            width: 200px;
            height: auto;
        }

        .subtitle {
            font-size: 16px;
            font-weight: bold;
            color: #555;
            margin-top: 5px;
            border-top: 2px solid orange;
            padding: 8px 0;
        }

        .header {
            padding-bottom: 10px;
        }

        .container table {
            margin-bottom: 10px;
        }

        .bg-indigo {
            background-color: #006BA6;
            color: white;
        }

        .border {
            border: 1px solid black;
        }

        .p-2 {
            padding: 5px;
        }

        .p-3 {
            padding: 10px;
        }

        .text-center {
            text-align: center;
        }

        .proyectos {
            font-size: 0.6rem;
        }

        .proyectos thead tr th {
            padding: 5px 10px;
            border: 1px solid white;
        }

        .proyectos tbody tr td {
            padding: 5px 5px;
            border: 1px solid #DEE2E6;
        }

        .proyectos tfoot tr td {
            padding: 5px 0px;
            border: 1px solid #DEE2E6;
            padding: 3px;
        }

        .text-end {
            text-align: right
        }

        .fw-bold {
            font-weight: bold;
        }

        .text-start {
            text-align: start;
        }

        .proyectos tbody tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .proyectos tbody tr:nth-child(odd) {
            background-color: #ffffff;

        }

        .text-muted {
            color:  rgb(108, 117, 125);
        }
    </style>
</head>

<body>
    <div class="container">
        <table class="header">
            <tbody>
                <tr>
                    <td class="logo-container">
                        <img src="./imagenes/logo.png" alt="logo" class="logo">
                        <div class="subtitle">GESTIÓN Ing. Nelson Gallinate Torrico</div>
                    </td>
                    <td class="title">
                        <h3>
                            Reporte de Proyectos
                        </h3>
                        <h5>A CARGO DE "{{auth()->user()->name}}"</h5>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="container">
        <table class="proyectos">
            <thead class="bg-indigo text-center">
                <tr>
                    <th>N°</th>
                    <th>PROYECTO</th>
                    <th>PRESUPUESTO</th>
                    <th>FECHA INICIO</th>
                    <th>FECHA FIN</th>
                    <th>AVANCE FISICO</th>
                    <th>CONTRATISTA</th>
                    <th>ULTIMO AVANCE</th>
                </tr>
            </thead>
            <tbody >
                @foreach($proyectos as $proyecto)
                <tr class="text-center">
                    <td >{{$loop->iteration}}</td>
                    <td >{{$proyecto->nombre}}</td>
                    <td class="{{ empty($proyecto->presupuesto) ? 'text-muted' : '' }} ">
                        {{ empty($proyecto->presupuesto) ? 'Sin presupuesto' : number_format($proyecto->presupuesto, 0, ',', '.') .' Bs.' }}
                    </td>
                    <td class="{{ empty($proyecto->fecha_orden_proceder) ? 'text-muted' : '' }}">
                        {{ empty($proyecto->fecha_orden_proceder) ? 'Sin fecha de inicio' : $proyecto->fecha_orden_proceder }}
                    </td>
                    <td class="{{ empty($proyecto->fecha_finalizacion) ? 'text-muted' : '' }}">
                        {{ empty($proyecto->fecha_finalizacion) ? 'Sin fin de plazo' : $proyecto->fecha_finalizacion }}
                    </td>
                    <td >{{ empty($proyecto->porcentaje_avance) ? '0' : $proyecto->porcentaje_avance }} %</td>
                    <td>{{$proyecto->adjudicatario}}</td>
                    <td class="{{ empty($proyecto->fecha_avance) ? 'text-muted' : '' }}">
                        {{ empty($proyecto->fecha_avance) ? 'Sin avance' : $proyecto->fecha_avance }}
                    </td>
                </tr>
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="2" class="text-end fw-bold">TOTAL</td>
                    <td colspan="5" class="text-start">{{number_format($presupuestoTotal, 0, ',', '.') .' Bs.'}}</td>
                </tr>
            </tfoot>
        </table>
    </div>
</body>

</html>