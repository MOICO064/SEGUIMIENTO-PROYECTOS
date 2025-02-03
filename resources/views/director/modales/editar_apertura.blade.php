<x-modal-registar id="EditApertura" title="EDITAR APERTURA PROGRAMATICA" size="modal-md">
    <form id="Editar_apertura">
        @csrf
        @method('PUT')
        <input type="text" id="id_apertura"name="id" hidden>
        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="codigo_edit" name="codigo" placeholder="Escribe el codigo de la apertura" oninput="this.value = this.value.toUpperCase();">
            <label for="codigo" class="form-label">CODIGO</label>
            <div id="codigo-error" class="invalid-feedback"></div>
        </div>
        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="nombre_edit" name="nombre" placeholder="" oninput="this.value = this.value.toUpperCase();">
            <label for="nombre" class="form-label">NOMBRE</label>
            <div id="nombre-error" class="invalid-feedback"></div>
        </div>
        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="presupuesto_edit" name="presupuesto" placeholder="">
            <label for="presupuesto" class="form-label">PRESUPUESTO </label>
            <div id="presupuesto-error" class="invalid-feedback"></div>
        </div>
        <div class="d-flex justify-content-center">
            <button type="button" class="btn btn-danger me-2" data-bs-dismiss="modal">Cancelar</button>
            <button type="submit" class="btn btn-primary">Guardar</button>
        </div>
    </form>
</x-modal-registar>