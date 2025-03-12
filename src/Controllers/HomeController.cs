// filepath: my-dotnet-app/Controllers/HomeController.cs
using Microsoft.AspNetCore.Mvc;

namespace my_dotnet_app.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class HomeController : ControllerBase
    {
        [HttpGet]
        public IActionResult Get()
        {
            return Ok("Hello from HomeController!");
        }
    }
}