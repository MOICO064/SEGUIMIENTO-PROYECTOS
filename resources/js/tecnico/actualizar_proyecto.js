import $ from 'jquery';
import Swal from 'sweetalert2';

$(document).ready(function () {
    $('#actualizar-proyecto input[required], #actualizar-proyecto select[required]').on('input change', function () {
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

    $('#actualizar-proyecto').on('submit', function (e) {
        e.preventDefault();
        let formData = new FormData(this);
        let planillas = [];
        let id = $('#proyecto_id').val();

        $('#actualizar-proyecto input[required], #actualizar-proyecto select[required]').each(function () {
            let value = $(this).val();
            let fieldId = $(this).attr('id');
            if (value === '') {
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

        $('.planilla-input').each(function () {
            let planillaData = {};
            let id = $(this).closest('.input-container').find('input[name="planilla_id"]').val(); 

            if ($(this).val().trim() !== '') {
                planillaData['nombre'] = $(this).val().trim();

                if (id) {
                    planillaData['id'] = id;
                }

                planillas.push(planillaData);
            }
        });

        formData.append('planillas', JSON.stringify(planillas));
        for (let pair of formData.entries()) {
            console.log(pair[0] + ': ' + pair[1]);
        }
        $.ajax({
            url: '/actualizar_proyecto/' + id,
            method: 'POST',
            data: formData,
            contentType: false,
            processData: false,
            success: function (response) {
                console.log('Respuesta del servidor:', response.proyecto);
                Swal.fire({
                    icon: 'success',
                    title: '¡Hecho!',
                    text: response.message || 'Datos registrados correctamente.',
                }).then((result) => {
                    if (result.isConfirmed) {
                        window.location.href = "/asignados/"+response.tecnico;
                    }
                });;

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
