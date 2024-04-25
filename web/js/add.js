window.onload = function() {
    document.getElementById("ID").focus();
};
function validateForm() {
    var id = document.forms["dataForm"]["id"].value;
    var number = document.forms["dataForm"]["number"].value;
    var name = document.forms["dataForm"]["name"].value;

    var idRegex = /^[a-zA-Z0-9_-]{3,16}$/;
    var numberRegex = /^[0-9]{1,10}$/;
    var nameRegex = /^[a-zA-Z\s]+$/;

    if (!idRegex.test(id)) {
        alert("Please enter a valid ID (3-16 characters, letters, numbers, - or _)");
        return false;
    }

    if (!numberRegex.test(number)) {
        alert("Please enter a valid Number (1-10 digits)");
        return false;
    }

    if (!nameRegex.test(name)) {
        alert("Please enter a valid Name (letters and spaces only)");
        return false;
    }
}

function calculateDollar() {
    var rmb = parseFloat(document.getElementById("rmb").value);
    var dollar = rmb / 7.25;
    document.getElementById("dollar").value = dollar.toFixed(2);
}

