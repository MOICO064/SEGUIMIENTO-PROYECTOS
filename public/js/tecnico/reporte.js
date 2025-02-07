import $ from 'jquery';

$(document).ready(function () {
    $('#paginas').val($('#perPage').val());
    $('#palabra').val($('#search').val());

    $('#perPage').on('change', function () {
        $('#paginas').val($(this).val());
    });

    $('#search').on('input', function () {
        $('#palabra').val($(this).val());
    });
});
