import $ from 'jquery';
import Swal from 'sweetalert2';

$(document).ready(function () {

    $('#Editar_apertura input').on('input change', function () {
        let fieldId = $(this).attr('id');
        let value = $(this).val();

        if (value === '' || value === null) {
            $('#' + fieldId).addClass('is-invalid').removeClass('is-valid');
            $('#' + fieldId + '-error').html('Este campo es obligatorio.');
        } else {
            $('#' + fieldId).removeClass('is-invalid').addClass('is-valid');
            $('#' + fieldId + '-error').html('');
        }
    });

    $('#Editar_apertura').on('submit', function (e) {
        e.preventDefault();

        let formData = new FormData(this);
        var id = $("#id_apertura").val();
        $('#Editar_apertura input').each(function () {
            let value = $(this).val();
            let fieldId = $(this).attr('id');
            if (value === '' || value === null) {
                $('#' + fieldId).addClass('is-invalid').removeClass('is-valid');
                $('#' + fieldId + '-error').html('Este campo es obligatorio.');
            } else {
                $('#' + fieldId).removeClass('is-invalid').addClass('is-valid');
                $('#' + fieldId + '-error').html('');
            }
        });


        if ($('.is-invalid').length > 0) {
            return;
        }

        $.ajax({
            url: '/director/actualizar_apertura/' + id,
            method: 'POST',
            data: formData,
            contentType: false,
            processData: false,
            success: function (response) {
                console.log('Respuesta del servidor:', response);
                Swal.fire({
                    icon: 'success',
                    title: '¡Hecho!',
                    text: response.message || 'Datos registrados correctamente.',
                }).then(() => {
                    location.reload();
                });
            },
            error: function () {
                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: 'Hubo un problema al registrar los datos.',
                });
            }
        });
    });
});
