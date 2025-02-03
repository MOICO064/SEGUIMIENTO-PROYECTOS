document.addEventListener("DOMContentLoaded", function () {
    var editModal = document.getElementById("exampleModal");

    editModal.addEventListener("show.bs.modal", function (event) {
        var button = event.relatedTarget;
        var id = button.getAttribute("data-id");
        console.log(id)
        var userId = document.getElementById("user_id");
        userId.value = id;
    });
    var DeleteUser = document.getElementById("activate");

    DeleteUser.addEventListener("show.bs.modal", function (event) {
        var button = event.relatedTarget;
        var id = button.getAttribute("data-id");
        console.log(id)
        var userId = document.getElementById("user_id_activate");
        userId.value = id;
    });
});
