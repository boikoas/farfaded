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
           
            ViewBag.Status = false;

            ViewBag.Title = "Home Page";

            return View();
        }
        [HttpPost]
        public ActionResult Login(string login, string password)
        {

            HttpCookie cookie = new HttpCookie("My localhost cookie");

            // Установить значения в нем
            
            if (login != "boikoas" && password != "4123")
            {
                return Redirect("/Home/Index");
            }
            else
            {
                cookie["Login"] = "boikoas";
                cookie["Password"] = "4123";
                Response.Cookies.Add(cookie);
                return Redirect("/User/Index");
            }


        }
    }
}
