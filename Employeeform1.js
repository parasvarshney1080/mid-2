Employeeform.js

$(document).ready(function () {
    $("#employeeForm").submit(function (event) {
        event.preventDefault(); // Prevent the form from submitting in the traditional way
        submitForm();
    });
});

function submitForm() {
    var formData = $('#employeeForm').serialize(); // Serialize the form data

    $.ajax({
        type: "POST",
        url: "/Employee/SubmitEmployee",
        data: formData,
        success: function (response) {
            alert(response); // Display the response from the server
        },
        error: function (error) {
            console.log(error);
        }
    });
}
