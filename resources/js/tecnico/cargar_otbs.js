document.addEventListener('DOMContentLoaded', function () {
    const distritoSelect = document.getElementById('distrito');
    const otbSelect = document.getElementById('otb');

    const OTBsA = ['OTB CIELO MOCKO', 'JUNTA VECINAL WILLCATACO', 'JUNTA VECINAL LOS LIRIOS DEL NORTE', 'OTB VILLA EL ROSEDAL DIOS ES AMOR', 'JUNTA VECINAL “TARAMOCKO”', 'SINDICATO AGRARIO CALLAJCHULLPA', 'OTB COLLPAPAMPA “DON BOSCO”', 'COMUNIDAD “COLLPAPAMPA BAJO - TARAMOCKO”', 'JUNTA VECINAL SAN JOSE KAMI', 'COMUNIDAD CAMPESINA “4 ESQUINAS”', 'OTB 23 DE MARZO', 'OTB SAN JOSE REDUCTO', 'OTB CAPACACHI NORTE', 'OTB FRONTERA KNAUDT', 'JUNTA VECINAL SEÑOR DE EXALTACION', 'COMUNIDAD CAMPESINA LLAUKENQUIRI', 'OTB VILLA FATIMA - TRES ESQUINAS'];
    const OTBsB = ['JUNTA VECINAL FLORIDA NORTE', 'OTB FLORIDA NORTE LOS BLOQUES', 'OTB. CAPACACHI CENTRAL', 'JUNTA VECINAL “BARRIO FABRIL”', 'OTB BARRIO MINERO MORCOCALA', 'OTB VILLA SANTA ISABEL', 'OTB BARRIO HUANUNI SANTA ROSA NORTE', 'OTB BARRIO HOLANDA SANTA ROSA NORTE', 'OTB URBANIZACION SAUSALITO', 'JUNTA VECINAL NUEVA JERUSALEN COÑA COÑA', 'JUNTA VECINAL MARTIN CARDENAS', 'OTB VILLA SAN ALFONSO', 'OTB BARRIO BARTOS COÑA COÑA', 'OTB BARRIO MAGISTERIO COÑA COÑA', 'OTB BARRIO MUNICIPAL DE COÑA COÑA', 'OTB ELIZABETH SETON', 'JUNTA VECINAL “OASYS”', 'OTB SANTA ROSA CENTRAL', 'OTB. SANTA ROSA CATAVI', 'OTB URBANIZACION LA PAZ COLCAPIRHUA', 'URB. SANTA ROSA TRABAJADORES DE COMERCIO', 'OTB ELFEC - CUCARDAS', 'OTB BARRIO CALIFORNIA', 'JUNTA VECINAL LA PRADERA', 'OTB LA FLORIDA SUD', 'OTB URB. LOS LIRIOS SUD'];
    const OTBsC = ['JUNTA VECINAL SENAC', 'OTB BARRIO CANADA', 'OTB JUNTA VECINAL FLORIDA II NORTE', 'OTB JAZMIN', 'OTB JUNTA VECINAL LIBERTADOR BOLIVAR', 'LA JUNTA MOYAPAMPA', 'OTB URB. RONNY ROJAS', 'OTB SAN FRANCISCO', 'OTB SUMUMPAYA CENTRAL', 'OTB BARRIO FERROVIARIO SUMUMPAYA NORTE', 'OTB SUMUMPAYA FERROVIARIO SUD', 'OTB SUMUMPAYA NORTE', 'OTB ANDRES CUSCHIERI', 'OTB. EMERGENCIA NORTE'];
    const OTBsD = ['OTB “URB. 21 DE SEPTIEMBRE”', 'OTB JUNTA VECINAL COLCAPIRHUA CENTRAL', 'OTB JUNTA VECINAL ZONA SUD COLCAPIRHUA', 'JUNTA VECINAL GENERAL PANDO', 'OTB PARAISO', 'JUNTA VECINAL PIÑAMI SUD', 'JUNTA VECINAL SAN LORENZO', 'JUNTA VECINAL VALLE SAN SILVESTRE'];
    const OTBsE = ['JUNTA VECINAL VALLE SAN SILVESTRE', 'OTB ESQUILAN GRANDE', 'SINDICATO AGRARIO ESQUILAN GRANDE', 'OTB SUMUMPAYA CHICO', 'SINDICATO AGRARIO SUMUMPAYA KULLKO', 'OTB SUMUMPAYA SUD', 'JUNTA VECINAL “SUMUMPAYA CENTRAL GRANDE”', 'JUNTA VECINAL SUMUMPAYA CALAMINA', 'SINDICATO AGRARIO QENAMARI KULLKU', 'JUNTA VECINAL MIRADOR DE COLCAPIRHUA', 'JUNTA VECINAL ALTO COLCAPIRHUA', 'JUNTA VECINAL PRADERAS DEL SUR'];

    const allOTBs = [...OTBsA, ...OTBsB, ...OTBsC, ...OTBsD, ...OTBsE];

    distritoSelect.addEventListener('change', function () {
        const distritoId = this.value;
        let otbsToLoad = [];

        if (distritoId === 'A') otbsToLoad = OTBsA;
        else if (distritoId === 'B') otbsToLoad = OTBsB;
        else if (distritoId === 'C') otbsToLoad = OTBsC;
        else if (distritoId === 'D') otbsToLoad = OTBsD;
        else if (distritoId === 'Alumbrado' || distritoId === 'Educacion' || distritoId === 'Salud') otbsToLoad = allOTBs;

        populateSelect(otbSelect, otbsToLoad);
    });

    otbSelect.addEventListener('input', function () {
        const searchValue = otbSelect.value.toLowerCase();
        const options = Array.from(otbSelect.options);

        options.forEach(option => {
            option.style.display = option.textContent.toLowerCase().includes(searchValue) ? '' : 'none';
        });
    });


    otbSelect.addEventListener('focus', function () {
        Array.from(otbSelect.options).forEach(option => {
            option.style.display = '';
        });
    });

    function populateSelect(select, otbs) {
        select.innerHTML = '<option value="">Seleccione una OTB</option>';
        otbs.forEach(otb => {
            const option = document.createElement('option');
            option.value = otb;
            option.textContent = otb;
            select.appendChild(option);
        });
    }
});