import $ from 'jquery';

$(document).ready(function () {
    let compromiso = 2;
    let responsable = 2;
    let fecha = 2;

    $('#addCompromiso').on('click', function () {
        // Crear el contenedor principal para los inputs
        const inputContainer = $('<div>', {
            class: 'row ',
        });

        // Crear contenedores individuales para los inputs
        const containerCompromiso = $('<div>', {
            class: 'col-12 col-lg-4 mb-2',
        });
        const containerResponsable = $('<div>', {
            class: 'col-12 col-lg-4 mb-2',
        });
        const containerFecha = $('<div>', {
            class: 'col-12 col-lg-3 mb-2',
        });
        const containerRemove = $('<div>', {
            class: 'col-12 col-lg-1 text-center',
        });

    
        const inputCompromiso = $('<input>', {
            type: 'text',
            class: 'form-control',
            id: 'compromiso' + compromiso,
            placeholder: compromiso,
            requerid: true,
            oninput: 'this.value = this.value.toUpperCase();'
        });

        const inputResponsable = $('<input>', {
            type: 'text',
            class: 'form-control',
            id: 'responsable' + responsable,
            placeholder: responsable,
            oninput: 'this.value = this.value.toUpperCase();'
        });

        const inputFecha = $('<input>', {
            type: 'date',
            class: 'form-control',
            id: 'fecha' + fecha,
        });


        const removeBtn = $('<i>', {
            class: 'ri-delete-bin-5-line text-danger',
            style: 'cursor: pointer; font-size: 1.5rem;',
        }).on('click', function () {
            inputContainer.remove();
        });

        // Crear mensajes de error (si es necesario)
        const errorCompromiso = $('<div>', {
            class: 'invalid-feedback',
            id: 'compromiso' + compromiso + '-error',
        });

        const errorResponsable = $('<div>', {
            class: 'invalid-feedback',
            id: 'responsable' + responsable + '-error',
        });

        const errorFecha = $('<div>', {
            class: 'invalid-feedback',
            id: 'fecha' + fecha + '-error',
        });

        // Añadir los inputs y errores a sus contenedores
        containerCompromiso.append(inputCompromiso).append(errorCompromiso);
        containerResponsable.append(inputResponsable).append(errorResponsable);
        containerFecha.append(inputFecha).append(errorFecha);
        containerRemove.append(removeBtn);

        // Añadir los contenedores al contenedor principal
        inputContainer.append(containerCompromiso)
            .append(containerResponsable)
            .append(containerFecha)
            .append(containerRemove);

        // Añadir el contenedor principal al DOM
        $('#compromisos').append(inputContainer);

        // Incrementar contadores
        compromiso++;
        responsable++;
        fecha++;

        // Validación en tiempo real
        inputCompromiso.on('input change', function () {
            validateInput($(this));
        });

        inputResponsable.on('input change', function () {
            validateInput($(this));
        });

        inputFecha.on('input change', function () {
            validateInput($(this));
        });
    });


    function validateInput(input) {
        const inputId = input.attr('id');

        if (input.val().trim() !== '') {
            input.removeClass('is-invalid').addClass('is-valid');
            $('#' + inputId + '-error').html('');
        } else {
            input.removeClass('is-valid').addClass('is-invalid');
            $('#' + inputId + '-error').html('Este campo es obligatorio');
        }
    }
});
