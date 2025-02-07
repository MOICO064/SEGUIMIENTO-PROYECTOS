$(document).ready(function () {
    $('#actualizar_acta input, #actualizar_acta select, #actualizar_acta textarea').on('input change', function () {
        let fieldId = $(this).attr('id');
        let value = $(this).val();
        let isRequired = $(this).attr('required') !== undefined;

        if (isRequired && value === '') {
            $('#' + fieldId).addClass('is-invalid').removeClass('is-valid');
            $('#' + fieldId + '-error').html('Este campo es obligatorio.');
        } else {
            $('#' + fieldId).removeClass('is-invalid').addClass('is-valid');
            $('#' + fieldId + '-error').html('');
        }
    });

    $('#actualizar_acta').on('submit', function (e) {
        e.preventDefault();

        let formData = new FormData(this);
        let id = $('#acta_id').val();
        $('#actualizar_acta input, #acta select, #acta textarea').each(function () {
            let value = $(this).val();
            let fieldId = $(this).attr('id');
            let isRequired = $(this).attr('required') !== undefined;

            if (isRequired && value === '') {
                $('#' + fieldId).addClass('is-invalid').removeClass('is-valid');
                $('#' + fieldId + '-error').html('Este campo es obligatorio.');
            } else {
                $('#' + fieldId).removeClass('is-invalid').addClass('is-valid');
                $('#' + fieldId + '-error').html('');
            }
        });


        if ($('.is-invalid').length > 0) {
            Swal.fire({
                icon: 'error',
                title: 'Error',
                text: 'Por favor, completa todos los campos obligatorios.',
            });
            return;
        }

        let agendas = [];
        $('#agendas .input-container').each(function () {
            let agendaData = {};
            let id = $(this).find('input[name="agenda_id"]').val();
            let descripcion = $(this).find('input[type="text"]').val().trim();

            if (descripcion !== '') {
                agendaData['descripcion'] = descripcion;

                if (id) {
                    agendaData['id'] = id;
                }

                agendas.push(agendaData);
            }
        });
        formData.append('agendas', JSON.stringify(agendas));
        let compromisos = [];
        $('#compromisos .row').each(function () {
            let compromisoData = {};
            let id = $(this).find('input[name="compromiso_id"]').val();
            let compromiso = $(this).find('input[type="text"]').eq(0).val().trim();
            let responsable = $(this).find('input[type="text"]').eq(1).val().trim();
            let fecha = $(this).find('input[type="date"]').val();

            if (compromiso !== '') {
                compromisoData['compromiso'] = compromiso;
                compromisoData['responsable'] = responsable || null;
                compromisoData['fecha'] = fecha || null;

                if (id) {
                    compromisoData['id'] = id;
                }

                compromisos.push(compromisoData);
            }
        });


        formData.append('compromisos', JSON.stringify(compromisos));

        let asistentes = [];
        $('#asistentes .input-container').each(function () {
            let asistenteData = {};
            let id = $(this).find('input[name="asistente_id"]').val();
            let asistente = $(this).find('input[type="text"]').val().trim();

            if (asistente !== '') {
                asistenteData['asistente'] = asistente;

                if (id) {
                    asistenteData['id'] = id;
                }

                asistentes.push(asistenteData);
            }
        });
        formData.append('asistentes', JSON.stringify(asistentes));

        for (let pair of formData.entries()) {
            console.log(pair[0] + ': ' + pair[1]);
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
            url: '/acta-actualizar/' + id,
            method: 'POST',
            data: formData,
            processData: false,
            contentType: false,
            success: function (response) {
                console.log(response);
                Swal.fire({
                    icon: 'success',
                    title: 'Éxito',
                    text: 'El acta se actualizó correctamente.',
                }).then(() => {
                    window.location.href = response.redirect;
                });
                $('#actualizar_acta')[0].reset();
                $('.is-valid').removeClass('is-valid');
            },
            error: function (xhr) {
                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: 'Ocurrió un problema al registrar el acta.',
                });
                console.error(xhr.responseText);
            },
        });
    });
});
