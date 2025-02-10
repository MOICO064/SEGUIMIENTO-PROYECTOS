<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Acta extends Model
{
    use HasFactory;
    protected $table='acta';
    
    protected $fillable=[
        'fecha',
        'lugar',
        'hora',
        'notas',
        'otb',
        'usuario_id',
    ];

    public function agendas()
    {
        return $this->hasMany(agenda::class);
    }

    
    public function compromisos()
    {
        return $this->hasMany(compromisos::class);
    }

    // Relación con asistentes
    public function asistentes()
    {
        return $this->hasMany(asistentes::class);
    }
}
