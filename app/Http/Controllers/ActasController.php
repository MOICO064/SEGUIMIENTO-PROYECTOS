<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\acta;

class ActasController extends Controller
{
    public function AgregarActa($data)
    {
        return acta::create($data);
    }
    public function Acta($id)
    {
        return Acta::where('id', $id)
            ->with(['agendas', 'compromisos', 'asistentes'])
            ->first();
    }
    public function actas($id)
    {
        return Acta::where('otb', $id)
            ->with(['agendas', 'compromisos', 'asistentes'])
            ->get();
    }
}
