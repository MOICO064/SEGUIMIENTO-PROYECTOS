@extends('layouts.main')
@section('content')
<a class="btn btn-danger m-3" onclick="history.back()">Atrás</a>
<h2 class="fw-bold text-center text-primary my-1">NUEVA ACTA DE REUNIÓN</h2>
<div class="container my-3">
    <form id="acta">
        @csrf
        <div class="row">
            <div class="col col-12 col-lg-6">
                <input type="text" id="distrito_id" name="distrito_id" value="{{$id}}" hidden>
                <div class="form-floating my-3">
                    <select name="otb" id="otb" class="form-select" required>
                        <option value="">Seleccione la OTB</option>
                    </select>
                    <label for="otb">OTB</label>
                    <div id="otb-error" class="invalid-feedback"></div>
                </div>
                <div class="form-floating my-3">
                    <input type="text" name="lugar" id="lugar" class="form-control" placeholder="" oninput=" this.value = this.value.toUpperCase();">
                    <label for="lugar">Lugar </label>
                </div>
            </div>
            <div class="col col-12 col-lg-6">
                <div class="form-floating my-3">
                    <input type="date" name="fecha" id="fecha" class="form-control" required>
                    <label for="fecha">Fecha </label>
                    <div id="fecha-error" class="invalid-feedback"></div>
                </div>

                <div class="form-floating my-3">
                    <input type="time" name="hora" id="hora" class="form-control" placeholder="">
                    <label for="hora">Hora </label>
                </div>
            </div>
        </div>
        <div class="row">
            <h4>AGENDA</h4>
            <div class="col" id="agendas">
                <div class="input-container mb-2">
                    <input type="text" id="agenda1" class="form-control" placeholder="1" required oninput="this.value = this.value.toUpperCase();"> 
                    <div id="agenda1-error" class="invalid-feedback"></div>
                </div>
            </div>
            <div class="fs-4 text-center btn-add">
                <i class="ri-add-circle-fill" id="addInputBtn"></i>
            </div>
        </div>
        <div class="row">
            <h4>NOTAS</h4>
            <div class="form-floating my-3">
                <textarea name="notas" id="notas" placeholder="Escriba sus notas aqui" oninput="this.value = this.value.toUpperCase();"></textarea>
            </div>
        </div>
        <div>
            <h4>Conclusión y/o Compromiso</h4>
            <div id="compromisos">
                <div class="row">
                    <div class="col-12 col-lg-4 mb-2">
                        <label for="compromiso">Compromiso</label>
                        <input type="text" id="compromiso1" class="form-control" placeholder="1" required oninput="this.value = this.value.toUpperCase();">
                        <div id="compromiso1-error" class="invalid-feedback"></div>
                    </div>
                    <div class="col-12 col-lg-4 mb-2">
                        <label for="responsable">Responsable</label>
                        <input type="text" id="responsable1" class="form-control" placeholder="1" oninput="this.value = this.value.toUpperCase();">
                    </div>
                    <div class="col-12 col-lg-3 mb-2">
                        <label for="responsable">Fecha</label>
                        <input type="date" id="fecha1" class="form-control" >
                        <div id="fecha1-error" class="invalid-feedback"></div>
                    </div>
                </div>
            </div>
            <div class="fs-4 text-center btn-add">
                <i class="ri-add-circle-fill" id="addCompromiso"></i>
            </div>
        </div>
        <div class="row">
            <h4>Asistentes</h4>
            <div class="col" id="asistentes">
                <div class="input-container mb-2">
                    <input type="text" id="asistente1" class="form-control" placeholder="1" oninput="this.value = this.value.toUpperCase();">
                </div>
            </div>
            <div class="fs-4 text-center btn-add">
                <i class="ri-add-circle-fill" id="addAsistente"></i>
            </div>
        </div>
        <div class="d-flex justify-content-center my-3">
            <button type="submit" class="btn btn-success">Registra Acta</button>
        </div>
    </form>
</div>
@endsection
@section('scripts')
<script src="{{asset('js/supervisor/agenda.js')}}"></script>
<script src="{{asset('js/supervisor/compromiso.js')}}"></script>
<script src="{{asset('js/supervisor/asistentes.js')}}"></script>
<script src="{{asset('js/supervisor/cargar_otb.js')}}"></script>
<script src="{{asset('js/supervisor/acta.js')}}"></script>
@endsection
