<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class apertura_programatica extends Model
{
    use HasFactory;
    protected $table='apertura_programatica';
    
    protected $fillable=[   
        'codigo',
        'nombre',
        'presupuesto',
    ];
}
