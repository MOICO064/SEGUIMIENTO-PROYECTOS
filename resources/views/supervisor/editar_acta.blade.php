@extends('layouts.main')
@section('content')
<a class="btn btn-danger m-3" onclick="history.back()">Atrás</a>
<h2 class="fw-bold text-center text-primary my-1">EDITAR ACTA DE REUNIÓN</h2>
<div class="container my-3">
    <form id="actualizar_acta">
        @csrf
        @method('PUT')
        <div class="row">
            <div class="col col-12 col-lg-6">
                <input type="text" id="acta_id" name="acta_id" value="{{$acta->id}}" hidden>
                <div class="form-floating my-3">
                    <input type="text" id="otb" name="otb" class="form-control" value="{{$acta->otb}}" readonly>
                    <label for="otb">OTB</label>
                    <div id="otb-error" class="invalid-feedback"></div>
                </div>
                <div class="form-floating my-3">
                    <input type="text" name="lugar" id="lugar" class="form-control" placeholder="" value="{{$acta->lugar}}" oninput="this.value = this.value.toUpperCase();">
                    <label for="lugar">Lugar </label>
                </div>
            </div>
            <div class="col col-12 col-lg-6">
                <div class="form-floating my-3">
                    <input type="date" name="fecha" id="fecha" class="form-control" required value="{{$acta->fecha}}">
                    <label for="fecha">Fecha </label>
                    <div id="fecha-error" class="invalid-feedback"></div>
                </div>

                <div class="form-floating my-3">
                    <input type="time" name="hora" id="hora" class="form-control" placeholder="" value="{{$acta->hora}}">
                    <label for="hora">Hora </label>
                </div>
            </div>
        </div>
        <div class="row">
            <h4>AGENDA</h4>
            <div class="col" id="agendas">
                @foreach ($acta->agendas as $agenda)
                <div class="input-container mb-2">
                    <input type="hidden" id="agenda_id" name="agenda_id" value="{{$agenda->id}}">
                    <input type="text" id="agenda{{$agenda->id}}" class="form-control" placeholder="1" required value="{{$agenda->descripcion}}" oninput="this.value = this.value.toUpperCase();">
                    <div id="agenda{{$agenda->id}}-error" class="invalid-feedback"></div>
                </div>
                @endforeach
            </div>

            <div class="fs-4 text-center btn-add">
                <i class="ri-add-circle-fill" id="addInputBtn"></i>
            </div>
        </div>
        <div class="row">
            <h4>NOTAS</h4>
            <div class="form-floating my-3">
                <textarea name="notas" id="notas" placeholder="Escriba sus notas aqui" oninput="this.value = this.value.toUpperCase();">{{$acta->notas}}</textarea>
            </div>
        </div>
        <div>
            <h4>Conclusión y/o Compromiso</h4>
            <div id="compromisos">
                @foreach ($acta->compromisos as $compromiso)
                <div class="row">
                    <input type="hidden" id="compromiso_id" name="compromiso_id" value="{{$compromiso->id}}" >
                    <div class="col-12 col-lg-4 mb-2">
                        <label for="compromiso">Compromiso</label>
                        <input type="text" id="compromiso{{$compromiso->id}}" class="form-control" placeholder="1" required value="{{$compromiso->compromiso}}" oninput="this.value = this.value.toUpperCase();">
                        <div id="compromiso{{$compromiso->id}}-error" class="invalid-feedback"></div>
                    </div>
                    <div class="col-12 col-lg-4 mb-2">
                        <label for="responsable">Responsable</label>
                        <input type="text" id="responsable{{$compromiso->id}}" class="form-control" placeholder="1" value="{{$compromiso->responsable}}" oninput="this.value = this.value.toUpperCase();">
                    </div>
                    <div class="col-12 col-lg-3 mb-2">
                        <label for="responsable">Fecha</label>
                        <input type="date" id="fecha{{$compromiso->id}}" class="form-control" value="{{$compromiso->fecha_estimada}}">
                    </div>
                </div>
                @endforeach
            </div>
            <div class="fs-4 text-center btn-add">
                <i class="ri-add-circle-fill" id="addCompromiso"></i>
            </div>
        </div>
        <div class="row">
            <h4>Asistentes</h4>
            <div class="col" id="asistentes">
                @foreach ($acta->asistentes as $asistente)
                <div class="input-container mb-2">
                    <input type="hidden" id="asistente_id" name="asistente_id" value="{{$asistente->id}}">
                    <input type="text" id="asistente{{$asistente->id}}" class="form-control" placeholder="1" value="{{$asistente->asistente}}" oninput="this.value = this.value.toUpperCase();">
                </div>
                @endforeach
            </div>
            <div class="fs-4 text-center btn-add">
                <i class="ri-add-circle-fill" id="addAsistente"></i>
            </div>
        </div>
        <div class="d-flex justify-content-center my-3">
            <button type="submit" class="btn btn-primary">Guardar </button>
        </div>
    </form>
</div>
@endsection
@section('scripts')
<script src="{{asset('js/supervisor/agenda.js')}}"></script>
<script src="{{asset('js/supervisor/compromiso.js')}}"></script>
<script src="{{asset('js/supervisor/asistentes.js')}}"></script>
<script src="{{asset('js/supervisor/actualizar_acta.js')}}"></script>
@endsection
