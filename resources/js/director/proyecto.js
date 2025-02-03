import $ from 'jquery';
import Swal from 'sweetalert2';

$(document).ready(function () {
    $('#registra-proyecto input[required], #registra-proyecto select[required]').on('input change', function () {
        let fieldId = $(this).attr('id');
        let value = $(this).val();

        if (value === '') {
            $('#' + fieldId).addClass('is-invalid').removeClass('is-valid');
            $('#' + fieldId + '-error').html('Este campo es obligatorio.');
        } else {
            $('#' + fieldId).removeClass('is-invalid').addClass('is-valid');
            $('#' + fieldId + '-error').html('');
        }
    });

    $('#registra-proyecto').on('submit', function (e) {
        e.preventDefault();

        let formData = new FormData(this);
        let planillas = [];
        let valid = true;

        $('#registra-proyecto input[required], #registra-proyecto select[required]').each(function () {
            let value = $(this).val();
            let fieldId = $(this).attr('id');

            if (value === '') {
                $('#' + fieldId).addClass('is-invalid').removeClass('is-valid');
                $('#' + fieldId + '-error').html('Este campo es obligatorio.');
                valid = false;
            } else {
                $('#' + fieldId).removeClass('is-invalid').addClass('is-valid');
                $('#' + fieldId + '-error').html('');
            }
        });

        if (!valid) {
            return;
        }

        $('.planilla-input').each(function () {
            if ($(this).val() !== '') {
                planillas.push($(this).val());
            }
        });

        formData.append('planillas', JSON.stringify(planillas));

        $.ajax({
            url: '/director/agregar_proyecto',
            method: 'POST',
            data: formData,
            contentType: false,
            processData: false,
            success: function (response) {
                Swal.fire({
                    icon: 'success',
                    title: '¡Hecho!',
                    text: response.message || 'Datos registrados correctamente.',
                });
                $('#registra-proyecto')[0].reset();
                $('.invalid-feedback').hide();
                $('.form-control, .form-select').removeClass('is-valid');
                $('#preview').hide();
                $('#text-foto').show();
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
