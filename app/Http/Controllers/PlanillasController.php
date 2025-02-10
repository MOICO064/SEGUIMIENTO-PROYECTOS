<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Planilla;
class PlanillasController extends Controller
{
    public function AgregarPlanilla($data) {
        return Planilla::create($data);
    }
}
