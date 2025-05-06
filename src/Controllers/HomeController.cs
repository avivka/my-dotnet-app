// filepath: my-dotnet-app/Controllers/HomeController.cs
using Microsoft.AspNetCore.Mvc;

namespace my_dotnet_app.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            ViewData["Message"] = "Welcome to my .NET application!";
            return View();
        }

        public IActionResult About()
        {
            ViewData["Message"] = "This is the about page.";
            return View();
        }

        public IActionResult Contact()
        {
            ViewData["Message"] = "Get in touch with us.";
            return View();
        }
    }
}