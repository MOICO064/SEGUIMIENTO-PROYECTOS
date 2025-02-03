<?php

namespace App\Http\Controllers;


use App\Models\agenda;
class AgendaController extends Controller
{
    public function AgregarAgenda($data){
         return agenda::create($data);
    }
}