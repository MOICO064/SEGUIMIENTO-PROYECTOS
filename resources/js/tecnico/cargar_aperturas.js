document.addEventListener('DOMContentLoaded', function () {
    const distritoSelect = document.getElementById('apertura_id');
    fetch('/aperturas')
        .then(response => response.json())
        .then(data => {
            if (data.success && data.data.length > 0) {
                data.data.forEach(apertura => {
                    const option = document.createElement('option');
                    option.value = apertura.id;
                    option.textContent =apertura.codigo;  
                    distritoSelect.appendChild(option);
                });
            } else {
                distritoSelect.innerHTML = '<option value="">No hay aperturas programaticas disponibles</option>';
            }
        })
        .catch(error => {
            console.error('Error al cargar los distritos:', error);
            distritoSelect.innerHTML = '<option value="">Error al cargar los distritos</option>';
        });
});