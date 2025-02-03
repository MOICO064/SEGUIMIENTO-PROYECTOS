document.addEventListener('DOMContentLoaded', function () {
    const tecnicosSelect = document.getElementById('supervisor');
    fetch('/tecnicos')
        .then(response => response.json())
        .then(data => {
            if (data.success && data.data.length > 0) {
                data.data.forEach(tecnico => {
                    const option = document.createElement('option');
                    option.value = tecnico.name;
                    option.textContent = tecnico.name;  
                    tecnicosSelect.appendChild(option);
                });
            } else {
                tecnicosSelect.innerHTML = '<option value="">No hay Tecnicos disponibles</option>';
            }
        })
        .catch(error => {
            console.error('Error al cargar los distritos:', error);
            tecnicosSelect.innerHTML = '<option value="">Error al cargar los Tecnicos</option>';
        });
});