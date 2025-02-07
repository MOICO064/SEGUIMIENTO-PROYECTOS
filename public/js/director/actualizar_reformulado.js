$(document).ready(function () {

    $('#Editar_reformulado input').on('input change', function () {
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

    $('#Editar_reformulado').on('submit', function (e) {
        e.preventDefault();

        let formData = new FormData(this);
        var id = $("#edit_id").val();
        $('#Editar_reformulado input').each(function () {
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
        Swal.fire({
            title: 'Actualizando...',
            text: 'Por favor espera mientras procesamos tu solicitud.',
            showConfirmButton: false,
            allowOutsideClick: false,
            didOpen: () => {
                Swal.showLoading();
            }
        });
        $.ajax({
            url: '/director/actualizar_reformulado/' + id,
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
