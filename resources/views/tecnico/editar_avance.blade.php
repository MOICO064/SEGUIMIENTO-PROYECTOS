@extends('layouts.main')
@section('content')
<div class="container shadow col-12 col-lg-6 p-3 rounded-4">
    <h3 class="fw-bold text-center text-primary my-3">EDITAR AVANCE</h3>
    <form id="actualizar-avance">
        @csrf
        @method('PUT')
        <div>
            <input type="text" name="id_avance" id="id_avance" value="{{$avance->id}}" hidden>
            <input type="text" name="proyecto_id" id="proyecto_id" value="{{$proyecto->id}}" hidden>
            <div class="form-floating my-3">
                <input type="date" name="fecha" id="fecha" class="form-control" required value="{{$avance->fecha}}">
                <label for="fecha">Fecha </label>
                <div id="fecha-error" class="invalid-feedback"></div>
            </div>
            <div class="form-floating my-3">
                <textarea type="text" name="descripcion" id="descripcion" class="form-control" placeholder=""  oninput="autoGrow(this); this.value = this.value.toUpperCase();">{{$avance->descripcion}}</textarea>
                <label for="descripcion">Descripcion</label>
                <div id="descripcion-error" class="invalid-feedback"></div>
            </div>
            <div class="my-3">
                <label for="porcentaje_avance" class="form-label">Avance del proyecto</label>
                <input type="range" class="form-range" min="0" max="100" step="0" id="porcentaje_avance" name="porcentaje_avance" value="{{$proyecto->porcentaje_avance}}">
                <p class="text-center"><span id="rangeValue">{{$proyecto->porcentaje_avance}}</span> %</p>
            </div>
            <div class="form-floating">
                <input type="number" class="form-control" name="monto_certificado" id="monto_certificado" placeholder value="{{$avance->monto_certificado}}">
                <label for="monto_certificado">Monto Certificado</label>
                <div id="monto_certificado-error" class="invalid-feedback"></div>
            </div>
            <div class="form-floating my-3">
                <textarea type="text" name="observacion" id="observacion" class="form-control" placeholder=""  oninput="autoGrow(this); this.value = this.value.toUpperCase();">{{$avance->observacion}}</textarea>
                <label for="observacion">Observaciones</label>
                <div id="observacion-error" class="invalid-feedback"></div>
            </div>
            <div class="d-flex justify-content-center my-3 gap-2">
                <button type="submit" class="btn btn-primary d-flex align-items-center justify-content-center">
                    <i class="ri-save-line" style="font-size: 1.2rem;"></i>
                    <span class="ms-2">Registrar</span>
                </button>
                <a class="btn btn-danger" onclick="history.back()">CANCELAR</a>
            </div>
        </div>
    </form>
</div>
@endsection
@section('scripts')
<script src="{{asset('js/tecnico/actualizar_avance.js')}}"></script>
<script src="{{asset('js/tecnico/porcentaje.js')}}"></script>
@endsection