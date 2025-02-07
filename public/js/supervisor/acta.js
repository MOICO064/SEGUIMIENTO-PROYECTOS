$(document).ready(function () {
    $('#acta input, #acta select, #acta textarea').on('input change', function () {
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

    $('#acta').on('submit', function (e) {
        e.preventDefault();

        let formData = new FormData(this);

        $('#acta input, #acta select, #acta textarea').each(function () {
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
        $('#agendas .input-container input').each(function () {
            let agenda = $(this).val().trim();
            if (agenda) agendas.push(agenda);
        });
        formData.append('agendas', JSON.stringify(agendas));

        let compromisos = [];
        $('#compromisos .row').each(function () {
            let compromiso = $(this).find("input[id^='compromiso']").val().trim();
            let responsable = $(this).find("input[id^='responsable']").val().trim();
            let fecha = $(this).find("input[id^='fecha']").val();

            if (compromiso) {
                compromisos.push({
                    compromiso,
                    responsable: responsable || null,  
                    fecha: fecha || null
                });
            }
        });

        formData.append('compromisos', JSON.stringify(compromisos));

        let asistentes = [];
        $('#asistentes .input-container input').each(function () {
            let asistente = $(this).val().trim();
            if (asistente) asistentes.push(asistente);
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
            url: '/agregar_acta', 
            method: 'POST',
            data: formData,
            processData: false,
            contentType: false,
            success: function (response) {
                Swal.fire({
                    icon: 'success',
                    title: 'Éxito',
                    text: 'El acta se registró correctamente.',
                }).then(() => {
                    window.location.href = response.redirect;
                });
                $('#acta')[0].reset(); // Reseteamos el formulario
                $('.is-valid').removeClass('is-valid'); // Limpiar validación
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
