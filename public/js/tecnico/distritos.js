document.addEventListener('DOMContentLoaded', function () {
    const tablaDistritosBody = document.querySelector('#tabla-distritos tbody');
    const tablaOTBsBody = document.querySelector('#tabla-otbs tbody');

    fetch('/distritos')
        .then(response => response.json())
        .then(data => {
            if (data.success && data.data.length > 0) {
                tablaDistritosBody.innerHTML = '';

                data.data.forEach(distrito => {
                    const row = document.createElement('tr');
                    row.setAttribute('data-id', distrito.id);
                    row.classList.add('distrito-row');
                    row.style.cursor = 'pointer';

                    const cell = document.createElement('td');
                    cell.textContent = distrito.nombre;

                    row.appendChild(cell);
                    tablaDistritosBody.appendChild(row);
                });
            } else {
                tablaDistritosBody.innerHTML = `
                    <tr>
                        <td colspan="1">No hay distritos disponibles</td>
                    </tr>
                `;
            }
        })
        .catch(error => {
            console.error('Error al cargar los distritos:', error);
            tablaDistritosBody.innerHTML = `
                <tr>
                    <td colspan="1">Error al cargar los distritos</td>
                </tr>
            `;
        });

    const card_otbs = document.querySelector('#card-otbs');

    tablaDistritosBody.addEventListener('click', function (event) {
        const row = event.target.closest('.distrito-row');
        if (row) {
            card_otbs.classList.remove('d-none');
            const distritoId = row.getAttribute('data-id');
            cargarOTBs(distritoId);
        }
    });


    function cargarOTBs(distritoId) {
        tablaOTBsBody.innerHTML = `
            <tr>
                <td colspan="1">Cargando OTBs...</td>
            </tr>
        `;
        fetch(`/otbs/${distritoId}`)
            .then(response => response.json())
            .then(data => {
                if (data.success && data.data.length > 0) {
                    tablaOTBsBody.innerHTML = '';

                    data.data.forEach(otb => {
                        const row = document.createElement('tr');
                        row.setAttribute('data-id', otb.id); // Atributo para el ID de la OTB

                        const cell = document.createElement('td');
                        cell.textContent = otb.nombre; // Nombre de la OTB

                        row.appendChild(cell);
                        tablaOTBsBody.appendChild(row);
                    });
                } else {
                    tablaOTBsBody.innerHTML = `
                        <tr>
                            <td colspan="1">No hay OTBs disponibles para este distrito</td>
                        </tr>
                    `;
                }
            })
            .catch(error => {
                console.error('Error al cargar las OTBs:', error);
                tablaOTBsBody.innerHTML = `
                    <tr>
                        <td colspan="1">Error al cargar las OTBs</td>
                    </tr>
                `;
            });
    }
});
