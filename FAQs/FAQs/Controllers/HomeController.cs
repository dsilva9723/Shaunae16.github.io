using FAQs.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace FAQs.Controllers
{
    public class HomeController : Controller
    {
        private FAQContext context { get;set }

        public HomeController(FAQContext ftx)
        {
            context = ftx;
        }
    public IActionResult Index()
        {
            var faqs = context.FAQ.OrderBy(f => f.Question).ToList();
            return base.View(faqs);
        }
    }
