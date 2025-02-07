document.addEventListener("DOMContentLoaded", function () {
    var editModal = document.getElementById("EditReformulado");

    editModal.addEventListener("show.bs.modal", function (event) {
        var button = event.relatedTarget;
        var id = button.getAttribute("data-id");
       
        if (id) {
            fetch('/director/editar_reformulado/' + id)
                .then(response => response.json())
                .then(data => {
                    document.getElementById("edit_id").value = data.id || "";
                    document.getElementById("fecha_aprobacion_edit").value = data.fecha_aprobacion || "";
                    document.getElementById("fecha_inicio_edit").value = data.fecha_inicio || "";
                    document.getElementById("ley_resolucion_edit").value = data.ley_resolucion || "";
                })
                .catch(error => console.error("Error al cargar los datos:", error));
        }
    });
});
