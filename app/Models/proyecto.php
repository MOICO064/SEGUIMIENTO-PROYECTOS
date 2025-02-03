<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class proyecto extends Model
{
    use HasFactory;
    protected $table = 'proyecto';

    protected $fillable = [
        'nombre',
        'distrito',
        'otb',
        'presupuesto',
        'fecha_finalizacion',
        'adjudicatario',
        'supervisor',
        'asignado_en',
        'fecha_orden_proceder',
        'plazo_dias',
        'fecha_avance',
        'porcentaje_avance',
        'avance_financiero',
        'observaciones',
        'apertura_id',

    ];
    public function planillas()
    {
        return $this->hasMany(Planilla::class);
    }
    public function apertura()
    {
        return $this->belongsTo(apertura_programatica::class);
    }
}
