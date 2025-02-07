const rangeInput = document.getElementById('porcentaje_avance');
const rangeValue = document.getElementById('rangeValue');

rangeInput.addEventListener('input', function () {
    rangeValue.textContent = this.value;
    const percent = ((this.value - this.min) / (this.max - this.min)) * 100;
    rangeValue.style.left = `calc(${percent}% - 15px)`;
});
