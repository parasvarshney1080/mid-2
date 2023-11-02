public IActionResult Index()
{
    var jwtToken = Request.Cookies["jwtToken"];

    if(!string.IsNullOrEmpty(jwtToken))
    {
        // Token is present, you can use it for authentication

        // Make an AJAX request to fetch data from your API using the token
        $.ajax({
            url: 'https://localhost:7102/api/product',
            method: 'GET',
            headers: {
                'Authorization': 'Bearer ' + jwtToken // Include the token in the headers
            },
            success: function (data) {
                // Data is successfully fetched from the API, you can use it in your view
                return View(data); // Pass the data to your view for rendering
            },
            error: function (error) {
                console.error('Error fetching data from API:', error);
                // Handle the error, for example, display a message to the user
            }
        });
    }
    else
    {
        // Token is not present, handle this case
        return RedirectToAction("Login", "Home"); // Redirect to login page
    }
}
