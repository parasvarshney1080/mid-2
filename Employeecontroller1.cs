EmployeeController.cs 

public class EmployeeController : Controller
{
    public ActionResult Index()
    {
        return View();
    }

    [HttpPost]
    public JsonResult SubmitEmployee(Employee employee)
    {
        // Process the submitted data, e.g., save to a database
        // For simplicity, we'll just return a message
        string message = "Employee submitted: Name - " + employee.Name + ", Age - " + employee.Age + ", Profession - " + employee.Profession;
        return Json(message);
    }
}
