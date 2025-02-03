import $ from 'jquery';

$(document).ready(function () {
    function loadProyectos() {
        var selectedPerPage = $('#perPage').val();
        var searchTerm = $('#search').val();

        $.ajax({
            url: '/reformulados',
            method: 'GET',
            data: {
                perPage: selectedPerPage,
                search: searchTerm,
            },
            success: function (response) {
                $('#reformulados').html(response.tabla);
                $('#paginacion').html(response.paginacion);
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