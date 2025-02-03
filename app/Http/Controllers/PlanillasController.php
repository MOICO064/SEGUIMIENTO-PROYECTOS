<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\planilla;
class PlanillasController extends Controller
{
    public function AgregarPlanilla($data) {
        return planilla::create($data);
    }
}
