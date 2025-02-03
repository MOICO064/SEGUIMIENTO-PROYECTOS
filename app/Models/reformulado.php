<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class reformulado extends Model
{
    use HasFactory;
    protected $table = 'reformulado';
    protected $fillable = [
        'fecha_aprobacion',
        'fecha_inicio',
        'ley_resolucion'
    ];
}
