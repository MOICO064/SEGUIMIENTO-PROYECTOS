@extends('layouts.main')
@section('content')
<div class="container shadow col-12 col-lg-6 p-3 rounded-4">    
    <h3 class="fw-bold text-center text-primary my-3">REGISTRAR AVANCE</h3>
    <form id="registra-avance">
        @csrf
        <div>
            <input type="text" name="proyecto_id" id="proyecto_id" value="{{$proyecto->id}}" hidden>
            <div class="form-floating my-3">
                <input type="date" name="fecha" id="fecha" class="form-control" required>
                <label for="fecha">Fecha </label>
                <div id="fecha-error" class="invalid-feedback"></div>
            </div>
            <div class="my-3">
                <div id="planillas">
                    <label for="">Planillas</label>
                    <div class="input-container mb-2">
                        <input type="text" class="form-control planilla-input" id="input1" required>
                        <i class="ri-close-circle-fill remove-btn d-none" style="cursor: pointer;"></i>
                        <div id="input1-error" class="invalid-feedback"></div>
                    </div>
                </div>
                <div class="fs-4 text-center btn-add">
                    <i class="ri-add-circle-fill" id="addInputBtn"></i>
                </div>
            </div>
            <div class="form-floating my-3">
                <textarea type="text" name="descripcion" id="descripcion" class="form-control" placeholder="" oninput="autoGrow(this)"></textarea>
                <label for="descripcion">Descripcion</label>
                <div id="descripcion-error" class="invalid-feedback"></div>
            </div>
            <div class="my-3">
                <label for="porcentaje_avance" class="form-label">Avance del proyecto</label>
                <input type="range" class="form-range" min="{{$proyecto->porcentaje_avance}}" max="100" step="0" id="porcentaje_avance" name="porcentaje_avance" value="{{$proyecto->porcentaje_avance}}">
                <p class="text-center"><span id="rangeValue">{{$proyecto->porcentaje_avance}}</span> %</p>
            </div>
            <div class="form-floating">
                <input type="number" class="form-control" name="monto_certificado" id="monto_certificado" placeholder>
                <label for="monto_certificado">Monto Certificado</label>
                <div id="monto_certificado-error" class="invalid-feedback"></div>
            </div>
            <div class="form-floating my-3">
                <textarea type="text" name="observacion" id="observacion" class="form-control" placeholder="" oninput="autoGrow(this)"></textarea>
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
<script>
    function autoGrow(element) {
        element.style.height = "auto";
        element.style.height = (element.scrollHeight) + "px";
    }
</script>
@endsection
@vite(['resources/js/tecnico/porcentaje.js'])
@vite(['resources/js/tecnico/avance.js'])
@vite(['resources/js/tecnico/planillas.js'])