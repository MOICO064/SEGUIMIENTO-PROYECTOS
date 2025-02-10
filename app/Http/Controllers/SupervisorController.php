<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\ActasController;
use App\Models\Acta;
use App\Models\Agenda;
use App\Models\Compromisos;
use App\Models\Asistentes;

class SupervisorController extends Controller
{
    public function Otbs($distrito)
    {
        $otbs = [];
        $OTBsA = ['OTB CIELO MOCKO', 'JUNTA VECINAL WILLCATACO', 'JUNTA VECINAL LOS LIRIOS DEL NORTE', 'OTB VILLA EL ROSEDAL DIOS ES AMOR', 'JUNTA VECINAL “TARAMOCKO”', 'SINDICATO AGRARIO CALLAJCHULLPA', 'OTB COLLPAPAMPA “DON BOSCO”', 'COMUNIDAD “COLLPAPAMPA BAJO - TARAMOCKO”', 'JUNTA VECINAL SAN JOSE KAMI', 'COMUNIDAD CAMPESINA “4 ESQUINAS”', 'OTB 23 DE MARZO', 'OTB SAN JOSE REDUCTO', 'OTB CAPACACHI NORTE', 'OTB FRONTERA KNAUDT', 'JUNTA VECINAL SEÑOR DE EXALTACION', 'COMUNIDAD CAMPESINA LLAUKENQUIRI', 'OTB VILLA FATIMA - TRES ESQUINAS'];
        $OTBsB = ['JUNTA VECINAL FLORIDA NORTE', 'OTB FLORIDA NORTE LOS BLOQUES', 'OTB. CAPACACHI CENTRAL', 'JUNTA VECINAL “BARRIO FABRIL”', 'OTB BARRIO MINERO MORCOCALA', 'OTB VILLA SANTA ISABEL', 'OTB BARRIO HUANUNI SANTA ROSA NORTE', 'OTB BARRIO HOLANDA SANTA ROSA NORTE', 'OTB URBANIZACION SAUSALITO', 'JUNTA VECINAL NUEVA JERUSALEN COÑA COÑA', 'JUNTA VECINAL MARTIN CARDENAS', 'OTB VILLA SAN ALFONSO', 'OTB BARRIO BARTOS COÑA COÑA', 'OTB BARRIO MAGISTERIO COÑA COÑA', 'OTB BARRIO MUNICIPAL DE COÑA COÑA', 'OTB ELIZABETH SETON', 'JUNTA VECINAL “OASYS”', 'OTB SANTA ROSA CENTRAL', 'OTB. SANTA ROSA CATAVI', 'OTB URBANIZACION LA PAZ COLCAPIRHUA', 'URB. SANTA ROSA TRABAJADORES DE COMERCIO', 'OTB ELFEC - CUCARDAS', 'OTB BARRIO CALIFORNIA', 'JUNTA VECINAL LA PRADERA', 'OTB LA FLORIDA SUD', 'OTB URB. LOS LIRIOS SUD'];
        $OTBsC = ['JUNTA VECINAL SENAC', 'OTB BARRIO CANADA', 'OTB JUNTA VECINAL FLORIDA II NORTE', 'OTB JAZMIN', 'OTB JUNTA VECINAL LIBERTADOR BOLIVAR', 'LA JUNTA MOYAPAMPA', 'OTB URB. RONNY ROJAS', 'OTB SAN FRANCISCO', 'OTB SUMUMPAYA CENTRAL', 'OTB BARRIO FERROVIARIO SUMUMPAYA NORTE', 'OTB SUMUMPAYA FERROVIARIO SUD', 'OTB SUMUMPAYA NORTE', 'OTB ANDRES CUSCHIERI', 'OTB. EMERGENCIA NORTE'];
        $OTBsD = ['OTB “URB. 21 DE SEPTIEMBRE”', 'OTB JUNTA VECINAL COLCAPIRHUA CENTRAL', 'OTB JUNTA VECINAL ZONA SUD COLCAPIRHUA', 'JUNTA VECINAL GENERAL PANDO', 'OTB PARAISO', 'JUNTA VECINAL PIÑAMI SUD', 'JUNTA VECINAL SAN LORENZO', 'JUNTA VECINAL VALLE SAN SILVESTRE'];
        $OTBsE = ['JUNTA VECINAL ESQUILAN CHIJLLAWIRI', 'OTB ESQUILAN GRANDE', 'SINDICATO AGRARIO ESQUILAN GRANDE', 'OTB SUMUMPAYA CHICO', 'SINDICATO AGRARIO SUMUMPAYA KULLKO', 'OTB SUMUMPAYA SUD', 'JUNTA VECINAL “SUMUMPAYA CENTRAL GRANDE”', 'JUNTA VECINAL SUMUMPAYA CALAMINA', 'SINDICATO AGRARIO QENAMARI KULLKU', 'JUNTA VECINAL MIRADOR DE COLCAPIRHUA', 'JUNTA VECINAL ALTO COLCAPIRHUA', 'JUNTA VECINAL PRADERAS DEL SUR'];
        if ($distrito === 'A') {
            $otbs = $OTBsA;
        }
        if ($distrito === 'B') {
            $otbs = $OTBsB;
        }
        if ($distrito === 'C') {
            $otbs = $OTBsC;
        }
        if ($distrito === 'D') {
            $otbs = $OTBsD;
        }
        if ($distrito === 'E') {
            $otbs = $OTBsE;
        }
        return view('supervisor.otbs', compact('distrito', 'otbs'));
    }
    public function FormActa($id)
    {
        return view('supervisor.acta', compact('id'));
    }
    public function AgregarActa(Request $request)
    {
        try {
            $data = $request->only([
                'fecha',
                'lugar',
                'hora',
                'notas',
                'otb',
            ]);
            $data['usuario_id'] = auth()->user()->id;
            $actas = new ActasController();
            $acta = $actas->AgregarActa($data);

            $agendas = json_decode($request->input('agendas'), true);
            foreach ($agendas as $descripcion) {
                $acta->agendas()->create([
                    'descripcion' => $descripcion,
                ]);
            }
            $asistentes = json_decode($request->input('asistentes'), true);
            foreach ($asistentes as $nombre) {
                $acta->asistentes()->create([
                    'asistente' => $nombre,
                ]);
            }

            $compromisos = json_decode($request->input('compromisos'), true);
            foreach ($compromisos as $compromisoData) {
                $acta->compromisos()->create([
                    'compromiso' => $compromisoData['compromiso'],
                    'responsable' => isset($compromisoData['responsable']) ? $compromisoData['responsable'] : null,
                    'fecha_estimada' => isset($compromisoData['fecha']) ? $compromisoData['fecha'] : null,
                ]);
            }
            return response()->json([
                'message' => 'Acta registrada correctamente.',
                'redirect' => url('/distrito/otbs/' . $request['distrito_id'])
            ], 201);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Hubo un problema al registrar el proyecto: ' . $e->getMessage()], 500);
        }
    }
    public function Actas($id)
    {
        $otb = new ActasController();
        $actas = $otb->actas($id);
        return view('supervisor.actas', compact('actas'));
    }
    public function EditarActa($id)
    {
        $actas = new ActasController();
        $acta = $actas->Acta($id);
        return view('supervisor.editar_acta', compact('acta'));
    }

    public function ActualizarActa($id, Request $request)
    {
        $data = $request->only(['fecha', 'lugar', 'hora', 'notas', 'otb']);
        $acta = Acta::findOrFail($id);
        $acta->update($data);

        if ($request->has('agendas')) {
            $agendas = json_decode($request->agendas, true);
            foreach ($agendas as $agendaData) {
                if (isset($agendaData['id'])) {
                    Agenda::where('id', $agendaData['id'])->update(['descripcion' => $agendaData['descripcion']]);
                } else {
                    $acta->agendas()->create(['descripcion' => $agendaData['descripcion']]);
                }
            }
        }

        if ($request->has('compromisos')) {
            $compromisos = json_decode($request->compromisos, true);
            foreach ($compromisos as $compromisoData) {
                if (isset($compromisoData['id'])) {
                    Compromisos::where('id', $compromisoData['id'])->update([
                        'compromiso' => $compromisoData['compromiso'],
                        'responsable' => $compromisoData['responsable'],
                        'fecha_estimada' => $compromisoData['fecha'],
                    ]);
                } else {
                    $acta->compromisos()->create($compromisoData);
                }
            }
        }


        if ($request->has('asistentes')) {
            $asistentes = json_decode($request->asistentes, true);
            foreach ($asistentes as $asistenteData) {
                if (isset($asistenteData['id'])) {
                    Asistentes::where('id', $asistenteData['id'])->update(['asistente' => $asistenteData['asistente']]);
                } else {
                    $acta->asistentes()->create(['asistente' => $asistenteData['asistente']]);
                }
            }
        }

        return response()->json(['message' => 'Acta actualizada correctamente', 'redirect' => url('/actas/' . $request['otb'])], 200);
    }
}
