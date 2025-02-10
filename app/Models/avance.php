<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Avance extends Model
{
    use HasFactory;
    protected $table = 'avance';
    protected $fillable = [
        'fecha',
        'descripcion',
        'porcentaje_avance',
        'formulario',
        'observacion',
        'hoja_ruta',
        'asignado_en',
        'asignado_con',
        'monto_certificado',
        'supervisor_id',
        'proyecto_id',
    ];
}
