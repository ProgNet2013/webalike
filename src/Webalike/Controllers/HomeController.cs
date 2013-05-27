using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Webalike.Models;

namespace Webalike.Controllers {
	public class HomeController : Controller {
		private ArticleContext articleContext;

		public HomeController() {
			articleContext = new ArticleContext();
		}

		public ActionResult Index() {
			ViewBag.Message = "The Best of the Web. Chosen by You.";
			ViewData.Model = articleContext.Articles.OrderByDescending(a => a.PostedAtUtc).Take(3);
			return View();
		}

		public ActionResult About() {
			ViewBag.Message = "Your app description page.";

			return View();
		}

		public ActionResult Contact() {
			ViewBag.Message = "Your contact page.";

			return View();
		}
	}
}
