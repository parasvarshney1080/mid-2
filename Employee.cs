using Microsoft.AspNetCore.Mvc;

namespace Product_UI.Controllers
{
    public class ProductUIController : Controller
    {
        public IActionResult ProductUI()
        {
            return View();
        }
    }
}
