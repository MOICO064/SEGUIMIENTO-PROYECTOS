<?php

namespace App\Http\Controllers;

use App\Models\Avance;
use App\Models\Proyecto;
use Illuminate\Http\Request;

class AvanceController extends Controller
{
    public function Avance($id)
    {
        return Avance::where('proyecto_id', $id)
        ->orderBy('fecha','desc')->get();
    }
    public function AgregarAvance($data)
    {
        return Avance::create($data);
    }
    public function EditarAvance($id)
    {
        $avance = Avance::find($id);
        $proyecto = Proyecto::find($avance->proyecto_id);
        return view('tecnico.editar_avance', compact('avance', 'proyecto'));
    }
    public function ActualizarAvance($id, Request $request)
    {
        try {
            $data = $request->only([
                'fecha',
                'descripcion',
                'porcentaje_avance',
                'observacion',
                'monto_certificado',
                'proyecto_id',
            ]);

            $id = Avance::find($id);
            if ($id) {
                $id->update($data);
                $pro = Proyecto::find($id->proyecto_id);
                $pro['porcentaje_avance'] = $id->porcentaje_avance;
                $pro['fecha_avance'] = $id->fecha;
                $pro->save();
            }
            return response()->json([
                'message' => 'Avance actualizado correctamente.',
                'proyecto' => $id->proyecto_id,
            ]);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Hubo un problema al registrar el proyecto: ' . $e->getMessage()], 500);
        }
    }
}
