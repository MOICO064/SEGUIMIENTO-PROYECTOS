$(document).ready(function () {
    function loadProyectos() {
        var distritoId = $('#distrito').val();
        var selectedPerPage = $('#perPage').val();
        var searchTerm = $('#search').val();  
        $.ajax({
            url: '/proyectos/' + distritoId,
            method: 'GET',
            data: {
                perPage: selectedPerPage,
                search: searchTerm,  
            },
            success: function (response) {
                $('#tablaProyectos').html(response.tabla);
                $('#paginacion').html(response.paginacion);
                $('#presupuestoTotal').text(response.presupuestoTotal);
            },
            error: function (xhr, status, error) {
                console.error('Error en la solicitud AJAX: ', error);
            }
        });
    }

    $('#search').on('keyup', function () {
        loadProyectos();
    });
    $('#perPage').on('change', function () {
        loadProyectos();
    });
});
