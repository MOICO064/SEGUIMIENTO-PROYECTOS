$(document).ready(function () {
    $('#actualizar-avance input[required], #registra-avance textarea[required]').on('input change', function () {
        let fieldId = $(this).attr('id');
        let value = $(this).val().trim();

        if (value === '') {
            $('#' + fieldId).addClass('is-invalid').removeClass('is-valid');
            $('#' + fieldId + '-error').html('Este campo es obligatorio.');
        } else {
            $('#' + fieldId).removeClass('is-invalid').addClass('is-valid');
            $('#' + fieldId + '-error').html('');
        }
    });

    $('#actualizar-avance').on('submit', function (e) {
        e.preventDefault();

        let formData = new FormData(this);
        let planillas = [];
        let isValid = true;
        let id = $('#id_avance').val();

        $('#actualizar-avance input[required], #actualizar-avance textarea[required]').each(function () {
            let value = $(this).val().trim();
            let fieldId = $(this).attr('id');

            if (value === '') {
                $('#' + fieldId).addClass('is-invalid').removeClass('is-valid');
                $('#' + fieldId + '-error').html('Este campo es obligatorio.');
                isValid = false;
            } else {
                $('#' + fieldId).removeClass('is-invalid').addClass('is-valid');
                $('#' + fieldId + '-error').html('');
            }
        });

        if (!isValid) {
            return;
        }

        $('.planilla-input').each(function () {
            if ($(this).val().trim() !== '') {
                planillas.push($(this).val().trim());
            }
        });

        formData.append('planillas', JSON.stringify(planillas));
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
            url: '/actualizar_avance/' + id,
            method: 'POST',
            data: formData,
            contentType: false,
            processData: false,
            success: function (response) {
                Swal.fire({
                    icon: 'success',
                    title: '¡Hecho!',
                    text: response.message || 'Datos registrados correctamente.',
                }).then((result) => {
                    if (result.isConfirmed) {
                        window.location.href = "/avances/" + response.proyecto;
                    }
                });
                $('#registra-avance')[0].reset();
                $('.invalid-feedback').hide();
                $('.form-control, .form-select').removeClass('is-valid');
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
