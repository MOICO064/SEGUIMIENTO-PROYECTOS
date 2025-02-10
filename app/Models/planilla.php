<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Planilla extends Model
{
    use HasFactory;
    protected $table = 'planilla';

    protected $fillable = ['nombre', 'proyecto_id'];
    public function proyecto()
    {
        return $this->belongsTo(Proyecto::class);
    }
}
