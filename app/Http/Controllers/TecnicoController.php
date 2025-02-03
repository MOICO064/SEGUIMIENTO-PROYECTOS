<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Controllers\ProyectoController;
use App\Http\Controllers\PlanillasController;
use App\Http\Controllers\AvanceController;

class TecnicoController extends Controller
{
 
    public function Distritos()
    {
        return view('tecnico.distritos');
    }
    public function FormProyecto()
    {
        return view('tecnico.registrar_proyecto');
    }
    public function AgregarProyecto(Request $request)
    {
        try {
            $proyecto = new ProyectoController();
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
            $data['supervisor'] = auth()->user()->name;
            $data['asignado_en'] = auth()->user()->name;

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
    public function Avances($id)
    {
        $proyect = new ProyectoController();
        $pro = $proyect->Proyecto($id);
        $proyecto = new AvanceController();
        $avances = $proyecto->Avance($id);
        return view('tecnico.avances', compact('avances', 'pro'));
    }
    public function FormAvance($id)
    {
        $proyectos = new ProyectoController;
        $proyecto = $proyectos->Proyecto($id);
        return view('tecnico.registrar_avance', compact('proyecto'));
    }
    public function AgregarAvance(Request $request)
    {
        try {
            $avance = new AvanceController();
            $data = $request->only([
                'fecha',
                'descripcion',
                'porcentaje_avance',
                'observacion',
                'monto_certificado',
                'proyecto_id',
            ]);
            $data['asignado_con'] = auth()->user()->name;
            $data['asignado_en'] = auth()->user()->oficina;
            $data['supervisor_id'] = auth()->user()->id;

            $id = $avance->AgregarAvance($data);

            if ($id) {
                $proyecto = new ProyectoController();
                $pro = $proyecto->Proyecto($id->proyecto_id);
                $pro['porcentaje_avance'] = $id->porcentaje_avance;
                $pro['fecha_avance'] = $id->fecha;
                $pro->save();
                
                $planillas = json_decode($request->input('planillas'), true);

                if (is_array($planillas)) {
                    foreach ($planillas as $planillaNombre) {
                        $planilla = new PlanillasController();
                        $plan = [
                            'proyecto_id' => $id->proyecto_id,
                            'nombre' => $planillaNombre,
                        ];
                        $planilla->AgregarPlanilla($plan);
                    }
                } else {
                    return response()->json(['error' => 'El formato de las planillas no es válido.'], 400);
                }
            }
            return response()->json([
                'message' => 'Avance registrado correctamente.',
                'proyecto'=> $id->proyecto_id,
            ]);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Hubo un problema al registrar el proyecto: ' . $e->getMessage()], 500);
        }
    }
}
