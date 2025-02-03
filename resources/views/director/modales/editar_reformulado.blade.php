<x-modal-registar id="EditReformulado" title="EDITAR REFORMULADO" size="modal-md">
    <form id="Editar_reformulado">
        @csrf
        @method('PUT')  
        <input type="text" name="edit_id" id="edit_id" hidden>
        <div class="form-floating my-3">
            <input type="date" name="fecha_aprobacion_edit" id="fecha_aprobacion_edit" class="form-control">
            <label for="">Fecha Aprobación</label>
            <div id="fecha_aprobacion_edit-error" class="invalid-feedback"></div>
        </div>
        <div class="form-floating my-3">
            <input type="date" name="fecha_inicio_edit" id="fecha_inicio_edit" class="form-control">
            <label for="">Fecha Inicio</label>
            <div id="fecha_inicio_edit-error" class="invalid-feedback"></div>
        </div>
        <div class="form-floating my-3">
            <input type="text" name="ley_resolucion_edit" id="ley_resolucion_edit" class="form-control" placeholder>
            <label for="">Ley Resolución</label>
            <div id="ley_resolucion_edit-error" class="invalid-feedback"></div>
        </div>
        <div class="d-flex justify-content-center">
            <button type="button" class="btn btn-danger me-2" data-bs-dismiss="modal">Cancelar</button>
            <button type="submit" class="btn btn-primary">Guardar</button>
        </div>
    </form>
</x-modal-registar>