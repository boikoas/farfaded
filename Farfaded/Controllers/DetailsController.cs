using System.Web.Mvc;

namespace Farfaded.Controllers
{
    public class DetailsController : Controller
    {
        // GET
        public ActionResult Index(string type)
        {
            ViewBag.Type = type;
            return View();
        }
    }
}