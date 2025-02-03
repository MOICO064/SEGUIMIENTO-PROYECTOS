<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\AperturaProgramaticaController;
use App\Models\reformulado;

class DirectorController extends Controller
{
    public function Reformulados(Request $request)
    {
        $perPage = $request->get('perPage', 10);
        $perPage = in_array($perPage, [10, 25, 50, 100]) ? $perPage : 10;
        $searchTerm = $request->get('search', '');

        $reformulados = reformulado::where(function ($query) use ($searchTerm) {
            $query->where('fecha_aprobacion', 'like', "%$searchTerm%")
                ->orWhere('fecha_inicio', 'like', "%$searchTerm%")
                ->orWhere('ley_resolucion', 'like', "%$searchTerm%");
        })->paginate($perPage);

        if ($request->ajax()) {
            return response()->json([
                'tabla' => view('director.reformulados.tabla', compact('reformulados'))->render(),
                'paginacion' => view('director.reformulados.paginacion', compact('reformulados'))->render(),
            ]);
        }

        return view('director.reformulados', compact('reformulados'));
    }
    public function AgregarReformulado(Request $request)
    {
        try {
            $data = $request->only(['fecha_aprobacion', 'fecha_inicio', 'ley_resolucion']);
            reformulado::create($data);
            return response()->json([
                'message' => 'Reformulado agregado correctamente.',
            ]);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Hubo un problema al registrar el Reformulado: ' . $e->getMessage()], 500);
        }
    }
    public function EditarReformulario($id)
    {
        $reformulado = Reformulado::find($id);

        if (!$reformulado) {
            return response()->json(['error' => 'Reformulado no encontrado'], 404);
        }

        return response()->json($reformulado);
    }
    public function ActualizarReformulario($id, request $request)
    {
        try {
            $reformulado = reformulado::findOrFail($id);
            if (!$reformulado) {
                return response()->json(['error' => 'Reformulado no encontrado'], 404);
            }
            $reformulado->update([
                'fecha_aprobacion' => $request->input('fecha_aprobacion_edit'),
                'fecha_inicio' => $request->input('fecha_inicio_edit'),
                'ley_resolucion' => $request->input('ley_resolucion_edit'),
            ]);

            return response()->json(['message' => 'Reformulado actualizado correctamente.']);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Error al actualizar el Refomulario']);
        }
    }
    public function AgregarApertura(Request $request)
    {
        try {
            $data = $request->only(['codigo', 'nombre', 'presupuesto']);
            $apertura = new AperturaProgramaticaController();
            $apertura->AgregarApertura($data);
            return response()->json([
                'message' => 'Reformulado agregado correctamente.',
            ]);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Hubo un problema al registrar la Apertura: ' . $e->getMessage()], 500);
        }
    }
    public function FormProyecto()
    {
        return view('director.registrar_proyecto');
    }
    public function AgregarProyecto(Request $request)
    {
        try {
            $proyecto = new ProyectoController();
            $data = $request->only([
                'nombre',
                'distrito',
                'otb',
                'presupuesto',
                'fecha_finalizacion',
                'adjudicatario',
                'supervisor',
                'avance_financiero',
                'porcentaje_avance',
                'fecha_orden_proceder',
                'plazo_dias',
                'apertura_id',
            ]);
            $supervisor = User::where('name', $data['supervisor'])->first();
            $data['asignado_en'] = $supervisor->oficina;
            $id = $proyecto->AgregarProyecto($data);
            if ($id) {
                $planillas = json_decode($request->input('planillas'), true);

                if (is_array($planillas)) {
                    foreach ($planillas as $planillaNombre) {
                        $planilla = new PlanillasController();
                        $plan = [
                            'proyecto_id' => $id->id,
                            'nombre' => $planillaNombre,
                        ];
                        $planilla->AgregarPlanilla($plan);
                    }
                } else {
                    return response()->json(['error' => 'El formato de las planillas no es válido.'], 400);
                }
            }

            return response()->json([
                'message' => 'Proyecto creado correctamente.',
            ]);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Hubo un problema al registrar el proyecto: ' . $e->getMessage()], 500);
        }
    }
    public function NuevoUsuario()
    {
        return view('director.registrar_usuario');
    }
}
