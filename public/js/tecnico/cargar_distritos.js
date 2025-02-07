document.addEventListener('DOMContentLoaded', function () {
    const distritoSelect = document.getElementById('distrito');
    const distritos = ["A","B","C","D","E","Educacion","Salud","Alumbrado"];

    distritos.forEach(distrito => {
        const option = document.createElement('option');
        option.value = distrito; 
        option.textContent = distrito; 
        distritoSelect.appendChild(option); 
    });
});