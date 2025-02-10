<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Apertura_programatica;

class AperturaProgramaticaController extends Controller
{
    public function GetAperturas()
    {
        $distritos = Apertura_programatica::all();
        return response()->json([
            'success' => true,
            'data' => $distritos
        ], 200);
    }
    public function Aperturas(Request $request)
    {
        $perPage = $request->get('perPage', 10);
        $perPage = in_array($perPage, [10, 25, 50, 100]) ? $perPage : 10;
        $searchTerm = $request->get('search', '');

        $aperturas = Apertura_programatica::where(function ($query) use ($searchTerm) {
            $query->where('codigo', 'like', "%$searchTerm%")
                ->orWhere('nombre', 'like', "%$searchTerm%")
                ->orWhere('presupuesto', 'like', "%$searchTerm%");
        })->paginate($perPage);

        if ($request->ajax()) {
            return response()->json([
                'tabla' => view('director.aperturas.tabla', compact('aperturas'))->render(),
                'paginacion' => view('director.aperturas.paginacion', compact('aperturas'))->render(),
            ]);
        }

        return view('director.apertura_programatica', compact('aperturas'));
    }
    public function AgregarApertura($data)
    {
        return Apertura_programatica::create($data);
    }
    public function EditarApertura($id)
    {
        $apertura = Apertura_programatica::find($id);

        if (!$apertura) {
            return response()->json(['error' => 'Reformulado no encontrado'], 404);
        }

        return response()->json($apertura);
    }
    public function ActualizarApertura($id, request $request)
    {
        try {
            $apertura = Apertura_programatica::findOrFail($id);
            if (!$apertura) {
                return response()->json(['error' => 'Apertura no encontrada'], 404);
            }
            $apertura->update([
                'codigo' => $request->input('codigo'),
                'nombre' => $request->input('nombre'),
                'presupuesto' => $request->input('presupuesto'),
            ]);

            return response()->json(['message' => 'Apertura actualizada correctamente.']);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Error al actualizar la Apertura']);
        }
    }
}
