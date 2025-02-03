<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class agenda extends Model
{
    use HasFactory;
    protected $table='agenda';
    
    protected $fillable=[
        'descripcion',
        'acta_id',
    ];
    public function acta()
    {
        return $this->belongsTo(Acta::class);
    }
}
