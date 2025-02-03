<div class="modal fade" id="activate" tabindex="-1" aria-labelledby="activateLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="activateLabel">Confirmar Activación</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                ¿Estás seguro de que deseas activar este usuario?
            </div>
            <div class="modal-footer">
                <form method="POST" action="{{ route('usuario.activar') }}">
                    @csrf
                    @method('PUT')
                    <input type="hidden" name="user_id_activate" id="user_id_activate"> 
                    <button type="submit" class="btn btn-primary">Activar</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                </form>
            </div>
        </div>
    </div>
</div>