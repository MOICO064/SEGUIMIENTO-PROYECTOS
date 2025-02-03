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
        Schema::create('avance', function (Blueprint $table) {
            $table->id();
            $table->date('fecha');
            $table->text('descripcion')->nullable();
            $table->integer('porcentaje_avance');
            $table->string('formulario')->nullable();
            $table->string('observacion')->nullable();  
            $table->string('hoja_ruta')->nullable();
            $table->string('asignado_en');
            $table->string('asignado_con');
            $table->double('monto_certificado',11,2)->nullable();
            $table->unsignedBigInteger('supervisor_id');
            $table->unsignedBigInteger('proyecto_id');
            $table->timestamps();

            $table->foreign('supervisor_id')->references('id')->on('users')->onDelete('cascade');
            $table->foreign('proyecto_id')->references('id')->on('proyecto')->onDelete('cascade');

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('avance');
    }
};
