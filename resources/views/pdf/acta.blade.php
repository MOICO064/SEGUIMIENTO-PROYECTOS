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
            font-size: 25px;
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

        .datos tbody tr td {
            padding: 5px;
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

        .border-left {
            border-left: 1px solid black;
        }

        h4 {
            width: 100%;
            text-align: center;
        }

        .text-center {
            text-align: center;
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
                        <div class="subtitle">GESTIÓN: Ing. Nelson Gallinate Torrico</div>
                    </td>
                    <td class="title">ACTA DE REUNIÓN</td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="container">
        <table class="datos border">
            <thead class="bg-indigo">
                <tr>
                    <th class="p-3 border" colspan="2">DATOS DEL ACTA</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td> <b>OTB:</b> {{$acta->otb}}</td>
                    <td class="border-left "><b>N°:</b> {{$acta->id}}</td>
                </tr>
                <tr>
                    <td></td>
                    <td class="border-left"> <b>FECHA:</b> {{ \Carbon\Carbon::parse($acta->fecha)->format('d-m-Y') }}</td>

                </tr>
                <tr>
                    <td></td>
                    <td class="border-left "><b>LUGAR:</b> <span class="{{$acta->lugar??'text-muted'}}">{{$acta->lugar??'No definido'}}</span></td>
                </tr>
                <tr>
                    <td></td>
                    <td class="border-left "> <b>HORA:</b> <span class="{{$acta->hora??'text-muted'}}">{{$acta->hora??'No definido'}}</span> </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="container">
        <table class="border">
            <thead class="bg-indigo">
                <tr>
                    <th class="p-2">AGENDA</th>
                </tr>
            </thead>
            <tbody>
                @foreach($acta->agendas as $agenda)
                <tr class="border">
                    <td class="p-3">
                        {{ $agenda->descripcion }}
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    <div class="container">
        <table class="border">
            <thead class="bg-indigo">
                <tr>
                    <th class="p-2">NOTAS</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="p-3 {{ $acta->notas??'text-muted' }}">
                        {{ $acta->notas??'Sin notas' }}
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="container">
        <table class="border">
            <thead class="bg-indigo">
                <tr class="border">
                    <th colspan="3" class="p-2">CONCLUSIÓN Y/O COMPROMISO</th>
                </tr>
                <tr>
                    <th class="p-2 border">COMPROMISO</th>
                    <th class="p-2 border">RESPONSABLE</th>
                    <th class="p-2 border">FECHA</th>
                </tr>
            </thead>
            <tbody>
                @if (count($acta->compromisos) > 0)
                @foreach($acta->compromisos as $compromiso)
                <tr>
                    <td class="p-2 border">{{$compromiso->compromiso}}</td>
                    <td class="p-2 border">{{$compromiso->responsable}}</td>
                    <td class="p-2 border"> {{ \Carbon\Carbon::parse($compromiso->fecha_estimada)->format('d-m-Y') }}</td>
                </tr>
                @endforeach
                @else
                <tr>
                    <td colspan="2" class="text-muted border p-3 text-center">Sin compromisos</td>
                </tr>
                @endif

            </tbody>
        </table>
    </div>
    <div class="container">
        <table class="border">
            <thead class="border bg-indigo">
                <tr>
                    <th class="border p-2">ASISTENTE</th>
                    <th class="border p-2">FIRMA</th>
                </tr>
            </thead>
            <tbody>
                @if (count($acta->asistentes) > 0)
                @foreach($acta->asistentes as $asistente)
                <tr>
                    <td class="border p-3">{{$asistente->asistente}}</td>
                    <td class="border p-3"></td>
                </tr>
                @endforeach
                @else
                <tr>
                    <td colspan="2" class="text-muted border p-3 text-center">Sin asistentes</td>
                </tr>
                @endif
            </tbody>
        </table>
    </div>
</body>

</html>