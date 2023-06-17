document.getElementById("contact-form").addEventListener("submit", function(event) {
    event.preventDefault();

    var form = this;

    var formData = new FormData(form);
    var request = new XMLHttpRequest();
    request.open("POST", "procesar_formulario.php");
    request.onload = function() {
        var response = JSON.parse(request.responseText);

        if (request.status === 200 && response.status === "success") {
            form.reset();
            messageContainer.innerHTML = "<p class='success-message'>" + response.message + "</p>";
        } else {
            messageContainer.innerHTML = "<p class='error-message'>" + response.message + "</p>";
        }
    };
    request.send(formData);
});