<?php

namespace App\Http\Controllers;

use App\Models\proyecto;
use App\Models\planilla;
use Illuminate\Http\Request;

class ProyectoController extends Controller
{

    public function Proyectos($id, Request $request)
    {
        $perPage = $request->get('perPage', 10);
        $perPage = in_array($perPage, [10, 25, 50, 100]) ? $perPage : 10;
        $dis = $id;
        $searchTerm = $request->get('search', '');

        $proyectos = Proyecto::where('distrito', $id)
            ->where(function ($query) use ($searchTerm) {
                $query->where('nombre', 'like', "%$searchTerm%")
                    ->orWhere('supervisor', 'like', "%$searchTerm%")
                    ->orWhere('otb', 'like', "%$searchTerm%")
                    ->orWhere('adjudicatario', 'like', "%$searchTerm%")
                    ->orWhere('fecha_orden_proceder', 'like', "%$searchTerm%")
                    ->orWhere('fecha_finalizacion', 'like', "%$searchTerm%")
                    ->orWhere('porcentaje_avance', 'like', "%$searchTerm%");
            })
            ->paginate($perPage);

        $presupuestoTotal = $proyectos->sum('presupuesto');

        if ($request->ajax()) {
            return response()->json([
                'tabla' => view('proyectos.table', compact('proyectos', 'presupuestoTotal'))->render(),
                'paginacion' => view('proyectos.pagination', compact('proyectos'))->render(),
            ]);
        }

        return view('supervisor.proyectos', compact('proyectos', 'presupuestoTotal', 'dis'));
    }
    public function Proyecto($id)
    {
        return proyecto::find($id);
    }
    public function TecnicoProyectos($id, Request $request)
    {
        $perPage = $request->get('perPage', 10);
        $perPage = in_array($perPage, [10, 25, 50, 100]) ? $perPage : 10;
        $searchTerm = $request->get('search', '');

        $proyectos = Proyecto::where('supervisor', $id)
            ->where(function ($query) use ($searchTerm) {
                $query->where('nombre', 'like', "%$searchTerm%")
                    ->orWhere('adjudicatario', 'like', "%$searchTerm%")
                    ->orWhere('fecha_orden_proceder', 'like', "%$searchTerm%")
                    ->orWhere('fecha_finalizacion', 'like', "%$searchTerm%")
                    ->orWhere('porcentaje_avance', 'like', "%$searchTerm%")
                    ->orWhere('plazo_dias', 'like', "%$searchTerm%");
            })
            ->paginate($perPage);

        $presupuestoTotal = $proyectos->sum('presupuesto');

        if ($request->ajax()) {
            return response()->json([
                'tabla' => view('tecnico.proyectos.tabla', compact('proyectos', 'presupuestoTotal'))->render(),
                'paginacion' => view('proyectos.pagination', compact('proyectos'))->render(),
            ]);
        }

        return view('tecnico.proyectos', compact('proyectos', 'presupuestoTotal'));
    }

    public function EditarProyecto($id)
    {
        $proyecto = proyecto::find($id);
        $planillas = planilla::where('proyecto_id', $id)->get();
        return view('tecnico.editar_proyectos', compact('proyecto', 'planillas'));
    }
    public function ActualizarProyecto($id, Request $request)
    {
        try {
            $data = $request->only([
                'nombre',
                'presupuesto',
                'fecha_finalizacion',
                'adjudicatario',
                'fecha_orden_proceder',
                'plazo_dias',
                'porcentaje_avance',
                'avance_financiero',
                'apertura_id',
                'otb',
                'distrito',
                'observaciones'
            ]);
            $proyecto = Proyecto::findOrFail($id);
            $proyecto->update($data);

            $plantillas = json_decode($request->input('planillas'), true);
            if (is_array($plantillas)) {
                foreach ($plantillas as $plantillaData) {
                    if (isset($plantillaData['id'])) {
                        $plantilla = planilla::find($plantillaData['id']);
                        if ($plantilla) {
                            $plantilla->update(['nombre' => $plantillaData['nombre']]);
                        }
                    } else {
                        planilla::create([
                            'proyecto_id' => $proyecto->id,
                            'nombre' => $plantillaData['nombre'],
                        ]);
                    }
                }
            } else {
                return response()->json(['error' => 'El formato de las plantillas no es válido.'], 400);
            }
            return response()->json([
                'message' => 'Proyecto actualizado correctamente.',
                'tecnico' => auth()->user()->name,
                'proyecto' => $proyecto
            ]);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Hubo un problema al actualizar el proyecto: ' . $e->getMessage()], 500);
        }
    }
    public function AgregarProyecto($data)
    {
        return proyecto::create($data);
    }
}
