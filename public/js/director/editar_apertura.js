document.addEventListener("DOMContentLoaded", function () {
    var editModal = document.getElementById("EditApertura");

    editModal.addEventListener("show.bs.modal", function (event) {
        var button = event.relatedTarget;
        var id = button.getAttribute("data-id");
        if (id) {
            fetch('/director/editar_apertura/' + id)
                .then(response => response.json())
                .then(data => {
                    document.getElementById("id_apertura").value = data.id || "";
                    document.getElementById("codigo_edit").value = data.codigo || "";
                    document.getElementById("nombre_edit").value = data.nombre || "";
                    document.getElementById("presupuesto_edit").value = data.presupuesto || "";
                })
                .catch(error => console.error("Error al cargar los datos:", error));
        }
    });
});