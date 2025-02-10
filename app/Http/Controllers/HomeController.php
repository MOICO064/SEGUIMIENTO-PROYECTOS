<?php

namespace App\Http\Controllers;

use App\Models\Proyecto;


class HomeController extends Controller
{
    public function Home()
    {
        $proyectos = Proyecto::all();
        $TotalProyectos = $proyectos->count();
        $GastoTotal=$proyectos->sum('presupuesto');
        $proyectosCompletados = $proyectos->where('porcentaje_avance', 100)->count();
        $promedio = ($TotalProyectos > 0) ? ($proyectosCompletados / $TotalProyectos) * 100 : 0;
        $obras=$proyectos->where('asignado_en', 'Obras Públicas')->count();
        $saneamiento=$proyectos->where('asignado_en', 'Saneamiento Básico')->count();
        return view('home', compact('TotalProyectos','GastoTotal','promedio','obras','saneamiento'));
    }
}
