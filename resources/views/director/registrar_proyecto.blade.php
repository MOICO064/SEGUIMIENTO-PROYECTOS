@extends('layouts.main')
@section('content')
<div class="container shadow col-12 col-lg-12 p-3 rounded-4">
    <h3 class="fw-bold text-center my-3">REGISTRAR PROYECTO</h3>
    <form id="registra-proyecto" enctype="multipart/form-data">
        @csrf
        <div class="row align-items-star">
            <div class="col col-12 col-lg-4">
                <div class="form-floating my-3">
                    <input type="text" name="nombre" id="nombre" class="form-control " autofocus placeholder required oninput="autoGrow(this); this.value = this.value.toUpperCase();">
                    <label for="nombre">Nombre</label>
                    <div id="nombre-error" class="invalid-feedback"></div>
                </div>
                <div class="form-floating my-3">
                    <select name="distrito" id="distrito" class="form-select" required>
                        <option value="">Seleccione un distrito</option>
                    </select>
                    <label for="distrito">Distrito</label>
                    <div id="distrito-error" class="invalid-feedback"></div>
                </div>
                <div class="form-floating my-3">
                    <select name="otb" id="otb" class="form-select" contenteditable="true" required>
                        <option value="">Seleccione una OTB</option>
                    </select>
                    <label for="otb">OTB</label>
                    <div id="otb-error" class="invalid-feedback"></div>
                </div>
                <div class="form-floating my-3">
                    <input type="number" class="form-control" id="presupuesto" name="presupuesto" placeholder="Presupuesto">
                    <label for="presupuesto">Presupuesto</label>
                    <div id="presupuesto-error" class="invalid-feedback"></div>
                </div>
                <div class="form-floating my-3">
                    <input type="number" name="avance_financiero" id="avance_financiero" class="form-control" placeholder>
                    <label for="avance_financiero">Avance Financiero</label>
                    <div id="avance_financiero-error" class="invalid-feedback"></div>
                </div>
                <div class="my-3">
                    <label for="porcentaje_avance" class="form-label">Avance del proyecto</label>
                    <input type="range" class="form-range" min="0" max="100" step="0" id="porcentaje_avance" name="porcentaje_avance" value="0">
                    <p class="text-center"><span id="rangeValue">0</span> %</p>
                </div>

            </div>

            <div class="col col-12 col-lg-4">
                <div class="form-floating my-3">
                    <input type="text" name="adjudicatario" id="adjudicatario" class="form-control" placeholder="" required oninput="this.value = this.value.toUpperCase();">
                    <label for="adjudicatario">Contratista</label>
                    <div id="adjudicatario-error" class="invalid-feedback"></div>
                </div>
                <div class="form-floating my-3">
                    <select name="apertura_id" id="apertura_id" class="form-select" required>
                        <option value="">Seleccione una apertura</option>
                    </select>
                    <label for="apertura_id">Apertura Programatica</label>
                    <div id="apertura_id-error" class="invalid-feedback"></div>
                </div>
                <div class="form-floating my-3">
                    <input type="date" name="fecha_orden_proceder" id="fecha_orden_proceder" class="form-control" placeholder="">
                    <label for="fecha_orden_proceder">Fecha de Inicio</label>
                    <div id="fecha_orden_proceder-error" class="invalid-feedback"></div>
                </div>
                <div class="form-floating my-3">
                    <input type="date" name="fecha_finalizacion" id="fecha_finalizacion" class="form-control">
                    <label for="fecha_finalizacion">Fecha de Finalización</label>
                    <div id="fecha_finalizacion-error" class="invalid-feedback"></div>
                </div>
                <div class="form-floating my-3">
                    <input type="text" name="plazo_dias" id="plazo_dias" class="form-control" placeholder="">
                    <label for="plazo_dias">Plazo Dias</label>
                    <div id="plazo_dias-error" class="invalid-feedback"></div>
                </div>

            </div>
            <div class="col col-12 col-lg-4">
                <div class="my-3">
                    <label for="observaciones">Observaciones</label>
                    <textarea name="observaciones" id="observaciones" placeholder="Si tiene alguna observacion escriba aqui"></textarea>
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
                    <select name="supervisor" id="supervisor" class="form-select" required>
                        <option value="">Seleccione un Tecnico</option>
                    </select>
                    <label for="supervisor_id">Tecnicos</label>
                    <div id="supervisor_id-error" class="invalid-feedback"></div>
                </div>
            </div>
        </div>
        <div class="d-flex justify-content-center my-2">
            <button type="submit" class="btn btn-primary d-flex align-items-center justify-content-center">
                <i class="ri-save-line" style="font-size: 1.2rem;"></i>
                <span class="ms-2">Registrar</span>
            </button>
        </div>
    </form>
</div>
@endsection

@vite(['resources/js/tecnico/porcentaje.js'])
@vite(['resources/js/tecnico/cargar_aperturas.js'])
@vite(['resources/js/tecnico/cargar_distritos.js'])
@vite(['resources/js/tecnico/cargar_otbs.js'])
@vite(['resources/js/tecnico/planillas.js'])
@vite(['resources/js/director/proyecto.js'])
@vite(['resources/js/director/tecnicos.js'])