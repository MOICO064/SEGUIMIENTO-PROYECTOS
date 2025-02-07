$(document).ready(function () {
    let inputCounter = 2; 

    $('#addInputBtn').on('click', function () {
        const inputContainer = $('<div>', {
            class: 'input-container mb-2'
        });

        const newInput = $('<input>', {
            type: 'text',
            class: 'form-control planilla-input',
            id: 'agenda' + inputCounter,
            placeholder: inputCounter,
            oninput: 'this.value = this.value.toUpperCase();'
        });

        const removeBtn = $('<i>', {
            class: 'ri-close-circle-fill remove-btn',
            style: 'cursor: pointer;',
        }).on('click', function () {
            inputContainer.remove();  
        });
        const error=$('<div>', {
            class: 'invalid-feedback',
            id: 'agenda' + inputCounter+'-error'
        });

        inputContainer.append(newInput).append(removeBtn).append(error);  
        $('#agendas').append(inputContainer);

        inputCounter++;  

        newInput.on('input change', function () {
            const inputId = newInput.attr('id');  

            if (newInput.val() !== '') {
                newInput.removeClass('is-invalid').addClass('is-valid');
                $('#' + inputId + '-error').html('');
            } else {
                newInput.removeClass('is-valid').addClass('is-invalid');
                $('#' + inputId + '-error').html('Este campo es obligatorio');
            }
        });
    });

});
