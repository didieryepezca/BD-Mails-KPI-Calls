using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

using EmailSenderOpplus.Models;
using EmailSenderOpplus.Data.DataAccess;
using Microsoft.AspNetCore.Authorization;

namespace EmailSenderOpplus.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }


        [Authorize]
        public IActionResult Index()
        {
            return View();
        }


        [Authorize]
        public IActionResult CargarData()
        {
            return View();
        }


        [Authorize]
        public IActionResult HistoriaCargas()
        {
            CitasDA da = new CitasDA();

            var model = da.GetAllCargas();

            return View(model);
        }


        public IActionResult CargarCSV(string vNombre)
        {
            CitasDA da = new CitasDA();

            var result = da.USP_CargarArchivo(vNombre);

            return Json(result);
        }

        public IActionResult EnviarCitas()
        {
            CitasDA da = new CitasDA();

            var result = da.USP_EnviarCitas();

            return Json(result);
        }

        [Authorize]
        public IActionResult EnviarMails()
        {
            CitasDA da = new CitasDA();

            var model = da.GetAllCitas();

            return View(model);
        }

        [Authorize]
        public IActionResult HistorialEnvios(DateTime fecEnvio)
        {
            DateTime fechaHoy = DateTime.Now;
            ViewBag.fecha_hoy = fechaHoy.ToString("yyyy-MM-dd");

            if (fecEnvio.Date == Convert.ToDateTime("01/01/0001").Date)
            {
                fecEnvio = DateTime.Now;
            }

            CitasDA da = new CitasDA();

            var model = da.GetAllCitasEnviadas(fecEnvio);

            return View(model);
        }

        [HttpPost]
        public IActionResult HistorialEnvios(DateTime fecEnvio, string accion = "")
        {
            DateTime fechaHoy = DateTime.Now;
            ViewBag.fecha_hoy = fechaHoy.ToString("yyyy-MM-dd");

            if (fecEnvio.Date == Convert.ToDateTime("01/01/0001").Date)
            {
                fecEnvio = DateTime.Now;
            }

            CitasDA da = new CitasDA();

            var model = da.GetAllCitasEnviadas(fecEnvio);

            return View(model);

        }




        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
