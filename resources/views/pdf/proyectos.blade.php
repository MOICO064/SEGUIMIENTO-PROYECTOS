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
            padding: 0 20px;
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
            padding-bottom: 20px;
        }

        .container table {
            margin-bottom: 20px;
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
            font-size: 0.7rem;
        }

        .proyectos thead tr th {
            padding: 5px 10px;
            border: 1px solid white;
        }

        .proyectos tbody tr td {
            padding: 5px 0px;
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
                        <div class="subtitle">GESTIÓN: Ing. Nelson Gallinate Torrico</div>
                    </td>
                    <td class="title">
                        Reporte de Proyectos
                        <div>Distrito - {{$distritoId}}</div>
                        @if (!empty($otb))
                        <div>OTB- {{$otb}}</div>
                        @endif
                        <div>{{$fechaInicio}} <span>a</span> {{$fechaFinal}}</div>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="container">
        <table class="proyectos">
            <thead class="bg-indigo text-center">
                <tr>
                    <th>OTB</th>
                    <th>Proyecto</th>
                    <th>Porcentaje Avance</th>
                    <th>Inversion</th>
                    <th>Fin Plazo</th>
                    <th>Contratista</th>
                    <th>Supervisor</th>
                </tr>
            </thead>
            <tbody class="text-center">
                @foreach($proyectos as $proyecto)
                <tr>
                    <td>{{$proyecto->otb}}</td>
                    <td>{{$proyecto->nombre}}</td>
                    <td class>{{$proyecto->porcentaje_avance}} %</td>
                    <td>{{ number_format($proyecto->presupuesto, 0, ',', '.') }} Bs.</td>
                    <td>{{$proyecto->fecha_finalizacion}}</td>
                    <td>{{$proyecto->adjudicatario}}</td>
                    <td>{{$proyecto->supervisor}}</td>
                </tr>
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="3" class="text-end fw-bold">TOTAL</td>
                    <td colspan="4" class="text-start">{{$presupuestoTotal}} Bs.</td>
                </tr>
            </tfoot>
        </table>
    </div>
</body>

</html>