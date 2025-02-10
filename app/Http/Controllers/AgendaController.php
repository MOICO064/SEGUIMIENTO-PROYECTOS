<?php

namespace App\Http\Controllers;


use App\Models\Agenda;
class AgendaController extends Controller
{
    public function AgregarAgenda($data){
         return Agenda::create($data);
    }
}