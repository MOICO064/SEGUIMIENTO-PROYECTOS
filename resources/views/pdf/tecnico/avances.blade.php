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
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        .title {
            font-size: 20px;
            font-weight: bold;
            text-transform: uppercase;
            padding: 0 20px ;
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
            padding-bottom: 2px;
        }

        .container table {
            margin-bottom: 5px;
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
            padding: 5px 5px;
            border: 1px solid #DEE2E6;
            
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
            color: rgb(108, 117, 125);
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
                            Reporte de AVAnces
                        </h3>
                        <h5>del proyecto "{{$proyecto->nombre}}"</h5>
                        <h6>A CARGO DE "{{auth()->user()->name}}"</h6>
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
                    <th>FECHA</th>
                    <th>DESCRIPCION</th>
                    <th>PORCENTAJE AVANCE </th>
                    <th>OBSERVACIONES</th>
                    <th>MONTO CERTIFICADO</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($avances as $avance)
                <tr>
                    <td>{{$loop->iteration}}</td>
                    <td>{{$avance->fecha}}</td>
                    <td class="{{$avance->descripcion??'text-muted'}}">{{$avance->descripcion??'Sin Descripción'}} </td>
                    <td class="text-center">{{$avance->porcentaje_avance}} %</td>
                    <td class="{{$avance->observacion??'text-muted'}}">{{$avance->observacion??'Sin observaciones'}}</td>
                    <td>{{number_format($avance->monto_certificado, 0, ',', '.') }} Bs.</td>
                </tr>
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="5" class="text-end fw-bold">TOTAL</td>
                    <td colspan="1" class="text-start">{{number_format($presupuestoTotal, 0, ',', '.') .' Bs.'}}</td>
                </tr>
            </tfoot>
        </table>
    </div>
</body>

</html>