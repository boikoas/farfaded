using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Net.Http;
using System.Net;


namespace Farfaded.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Title = "Home Page";

            return View();
        }
        [HttpPost]
        public ActionResult Login(string login, string password)
        {
            var redirect ="";
            if (login != "boikoas" && password != "4123")
            {
                redirect = "/Home/Index";
            }
            else
            {
                redirect = "/User/Index";
            }


            return Redirect(redirect); 
        }
    }
}
