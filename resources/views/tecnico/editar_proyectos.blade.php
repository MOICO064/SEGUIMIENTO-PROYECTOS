@extends('layouts.main')
@section('content')
<div class="card shadow col-12 col-lg-12 p-4 rounded-4">
    <h3 class="fw-bold text-center my-3 text-uppercase">editar proyecto</h3>
    <form id="actualizar-proyecto">
        @csrf
        @method('PUT')
        <div class="row align-items-star">
            <div class="col col-12 col-lg-4">
                <input type="hidden" id="proyecto_id" name="proyecto_id" value="{{$proyecto->id}}">
                <div class="form-floating my-3">
                    <input type="text" name="nombre" id="nombre" class="form-control"
                        value="{{$proyecto->nombre}}" placeholder="Ingrese nombre" required
                        title="{{$proyecto->nombre}}" oninput="autoGrow(this); this.value = this.value.toUpperCase();">
                    <label for="nombre">Nombre</label>
                    <div id="nombre-error" class="invalid-feedback"></div>
                </div>
                <div class="form-floating my-3">
                    <select name="distrito" id="distrito" class="form-select" required>
                        <option value="{{$proyecto->distrito}}">{{$proyecto->distrito}}</option>
                    </select>
                    <label for="distrito">Distrito</label>
                    <div id="distrito-error" class="invalid-feedback"></div>
                </div>
                <div class="form-floating my-3">
                    <select name="otb" id="otb" class="form-select" contenteditable="true" required>
                        <option value="{{$proyecto->otb}}">{{$proyecto->otb}}</option>
                    </select>
                    <label for="otb">OTB</label>
                    <div id="otb-error" class="invalid-feedback"></div>
                </div>
                <div class="form-floating my-3">
                    <input type="number" class="form-control" id="presupuesto" name="presupuesto" placeholder="Presupuesto" value="{{$proyecto->presupuesto}}">
                    <label for="presupuesto">Presupuesto</label>
                    <div id="presupuesto-error" class="invalid-feedback"></div>
                </div>
                <div class="form-floating my-3">
                    <input type="number" name="avance_financiero" id="avance_financiero" class="form-control" placeholder value="{{$proyecto->avance_financiero}}">
                    <label for="avance_financiero">Avance Financiero</label>
                    <div id="avance_financiero-error" class="invalid-feedback"></div>
                </div>
                <div class="my-3">
                    <label for="porcentaje_avance" class="form-label">Avance del proyecto</label>
                    <input type="range" class="form-range" min="0" max="100" step="1"
                        id="porcentaje_avance" name="porcentaje_avance"
                        value="{{$proyecto->porcentaje_avance ?? 0}}">
                    <p class="text-center"><span id="rangeValue">{{$proyecto->porcentaje_avance ?? 0}}</span> %</p>
                </div>

            </div>
            <div class="col col-12 col-lg-4">
                <div class="form-floating my-3">
                    <input type="text" name="adjudicatario" id="adjudicatario" class="form-control" placeholder="" required value="{{$proyecto->adjudicatario}}" oninput="this.value = this.value.toUpperCase();">
                    <label for="adjudicatario">Contratista</label>
                    <div id="adjudicatario-error" class="invalid-feedback"></div>
                </div>
                <div class="form-floating my-3">
                    <select name="apertura_id" id="apertura_id" class="form-select" required>
                        <option value="{{$proyecto->apertura_id}}">{{$proyecto->apertura->codigo}}</option>
                    </select>
                    <label for="apertura_id">Apertura Programatica</label>
                    <div id="apertura_id-error" class="invalid-feedback"></div>
                </div>
                <div class="form-floating my-3">
                    <input type="date" name="fecha_orden_proceder" id="fecha_orden_proceder" class="form-control" placeholder="" value="{{$proyecto->fecha_orden_proceder}}">
                    <label for="fecha_orden_proceder">Fecha de Inicio</label>
                    <div id="fecha_orden_proceder-error" class="invalid-feedback"></div>
                </div>
                <div class="form-floating my-3">
                    <input type="date" name="fecha_finalizacion" id="fecha_finalizacion" class="form-control" value="{{$proyecto->fecha_finalizacion}}">
                    <label for="fecha_finalizacion">Fecha de Finalización</label>
                    <div id="fecha_finalizacion-error" class="invalid-feedback"></div>
                </div>
                <div class="form-floating my-3">
                    <input type="number" name="plazo_dias" id="plazo_dias" class="form-control" placeholder="" value="{{$proyecto->plazo_dias}}">
                    <label for="plazo_dias">Plazo Dias</label>
                    <div id="plazo_dias-error" class="invalid-feedback"></div>
                </div>

            </div>
            <div class="col col-12 col-lg-4">
                <div class="my-3">
                    <label for="observaciones">Observaciones</label>
                    <textarea name="observaciones" id="observaciones" placeholder="Si tiene alguna observacion escriba aqui" oninput="autoGrow(this); this.value = this.value.toUpperCase();">{{$proyecto->observaciones}}</textarea>
                </div>
                <div class="my-3">
                    <div id="planillas">
                        <label for="">Planillas</label>
                        @foreach ($planillas as $planilla)
                        <div class="input-container mb-2">
                            <input type="hidden" name="planilla_id" id="planilla_id" value="{{$planilla->id}}">
                            <input type="text" class="form-control planilla-input" id="input{{$planilla->id}}" required value="{{$planilla->nombre}}" oninput="this.value = this.value.toUpperCase();">
                            <i class="ri-close-circle-fill remove-btn d-none" style="cursor: pointer;"></i>
                            <div id="{{$planilla->id}}-error" class="invalid-feedback"></div>
                        </div>
                        @endforeach
                    </div>
                    <div class="fs-4 text-center btn-add">
                        <i class="ri-add-circle-fill" id="addInputBtn"></i>
                    </div>
                </div>
            </div>
        </div>
        <div class="d-flex justify-content-center gap-2 my-2">
            <button type="submit" class="btn btn-primary">
                GUARDAR
            </button>
            <a class="btn btn-danger " onclick="history.back()">CANCELAR</a>
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
<script src="{{asset('js/tecnico/porcentaje.js')}}"></script>
<script src="{{asset('js/tecnico/cargar_aperturas.js')}}"></script>
<script src="{{asset('js/tecnico/cargar_distritos.js')}}"></script>
<script src="{{asset('js/tecnico/cargar_otbs.js')}}"></script>
<script src="{{asset('js/tecnico/planillas.js')}}"></script>
<script src="{{asset('js/tecnico/actualizar_proyecto.js')}}"></script>
@endsection
