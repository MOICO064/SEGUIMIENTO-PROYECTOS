<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('proyecto', function (Blueprint $table) {
            $table->id();
            $table->string('nombre');
            $table->string('distrito');
            $table->string('otb');
            $table->double('presupuesto',11,2)->nullable();
            $table->date('fecha_finalizacion')->nullable();
            $table->string('adjudicatario');  
            $table->string('supervisor');  
            $table->string('asignado_en');
            $table->date('fecha_orden_proceder')->nullable();
            $table->integer('plazo_dias')->nullable();
            $table->string('fecha_avance')->nullable();
            $table->string('porcentaje_avance');
            $table->string('avance_financiero')->nullable();
            $table->string('observaciones')->nullable();
            $table->unsignedBigInteger('apertura_id');
            
            $table->timestamps();

            $table->foreign('apertura_id')->references('id')->on('apertura_programatica')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('proyecto');
    }
};
