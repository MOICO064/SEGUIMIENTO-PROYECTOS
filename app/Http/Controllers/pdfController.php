<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;
use App\Models\proyecto;
use App\Models\avance;

class pdfController extends Controller
{
    public function ActaPdf($id)
    {
        $actas = new ActasController();
        $acta = $actas->Acta($id);
        $pdf = PDF::loadView('pdf.acta', compact('acta'));

        return $pdf->download('Acta ' . $acta->otb . ' ' . $acta->id . '.pdf');
    }
    public function ActaVista($id){
        $actas = new ActasController();
        $acta = $actas->Acta($id);
        

        return view('pdf.vista_previa_actas', compact('acta'));
    }
    public function Reportes(Request $request)
    {
        $distritoId = $request->input('distrito_id');
        $otb = $request->input('otb');
        $fechaInicio = $request->input('fecha_inicio');
        $fechaFinal = $request->input('fecha_final');

        $query = Proyecto::query();

        if ($distritoId) {
            $query->where('distrito', $distritoId);
        }

        if ($otb) {
            $query->where('otb', $otb);
        }

        if ($fechaInicio && $fechaFinal) {
            $query->whereBetween('fecha_orden_proceder', [$fechaInicio, $fechaFinal]);
        }

        $proyectos = $query->get();

        $presupuestoTotal = $query->sum('presupuesto');
        return view('pdf.vista_previa_proyectos', compact('proyectos', 'distritoId', 'otb', 'fechaInicio', 'fechaFinal', 'presupuestoTotal'));
    }
    public function DescargarReporte(Request $request)
    {
        $distritoId = $request->input('distrito_id');
        $otb = $request->input('otb');
        $fechaInicio = $request->input('fecha_inicio');
        $fechaFinal = $request->input('fecha_final');

        $query = Proyecto::query();

        if ($distritoId) {
            $query->where('distrito', $distritoId);
        }

        if ($otb) {
            $query->where('otb', $otb);
        }

        if ($fechaInicio && $fechaFinal) {
            $query->whereBetween('fecha_orden_proceder', [$fechaInicio, $fechaFinal]);
        }
        $presupuestoTotal = $query->sum('presupuesto');
        $proyectos = $query->get();

        $pdf = PDF::loadView('pdf.proyectos', compact('proyectos', 'distritoId', 'otb', 'fechaInicio', 'fechaFinal', 'presupuestoTotal'));
        if ($otb != '') {

            return $pdf->download('Distrito-' . $distritoId . '- Proyectos' . '-' . $otb . '-' . $fechaInicio . 'a' . $fechaFinal . '.pdf');
        } else {
            return $pdf->download('Distrito-' . $distritoId . '- Proyectos' . '-'  . $fechaInicio . 'a' . $fechaFinal . '.pdf');
        }
    }
    public function ReportesAsignados($id, Request $request)
    {
        $perPage = $request->get('paginas');
        $searchTerm = $request->get('palabra');

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
        return view('pdf.tecnico.proyectos_vista_previa', compact('proyectos', 'presupuestoTotal', 'searchTerm', 'perPage'));
    }
    public function DescargarAsignados($id, Request $request)
    {
        $perPage = $request->get('perPage');
        $searchTerm = $request->get('search');

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
        $pdf = PDF::loadView('pdf.tecnico.proyectos', compact('proyectos', 'presupuestoTotal'));
        return $pdf->download('PROYECTOS-A-CARGO-DE-' . auth()->user()->name . '.pdf');
    }
    public function ReportesAvances($id)
    {
        $avances = avance::where('proyecto_id', $id)
            ->orderBy('fecha', 'asc')
            ->get();
        $proyecto = proyecto::find($id);
        $presupuestoTotal = $avances->sum('monto_certificado');
        return view('pdf.tecnico.avances_vista_previa', compact('avances', 'proyecto', 'presupuestoTotal'));
    }
    public function DescargarAvances($id)
    {
        $avances = avance::where('proyecto_id', $id)
            ->orderBy('fecha', 'asc')
            ->get();
        $proyecto = proyecto::find($id);
        $presupuestoTotal = $avances->sum('monto_certificado');
        $pdf = PDF::loadView('pdf.tecnico.avances', compact('avances', 'proyecto', 'presupuestoTotal'));
        return $pdf->download('Avances-del-proyecto-'.$proyecto->nombre.'-a-cargo-de-' . auth()->user()->name . '.pdf');
    }
}
