<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class compromisos extends Model
{
    use HasFactory;
    protected $table='compromisos';
    
    protected $fillable=[
        'compromiso',
        'responsable',
        'fecha_estimada',
        'acta_id',
    ];
    public function acta()
    {
        return $this->belongsTo(Acta::class);
    }
}
