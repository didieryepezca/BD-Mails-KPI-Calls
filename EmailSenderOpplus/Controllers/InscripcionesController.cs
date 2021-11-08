using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

using EmailSenderOpplus.Models;
using EmailSenderOpplus.Data.DataAccess;
using Microsoft.AspNetCore.Authorization;

namespace EmailSenderOpplus.Controllers
{
    public class InscripcionesController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        [Authorize]
        public IActionResult CargarAltas()
        {
            return View();
        }


        public IActionResult CargarAltasCSV(string vNombre)
        {
            InscripcionesDA da = new InscripcionesDA();

            var result = da.USP_CargarAltas(vNombre);

            return Json(result);
        }

        [Authorize]
        public IActionResult EnviarAltas()
        {
            InscripcionesDA da = new InscripcionesDA();

            var model = da.GetAllAltas();

            return View(model);
        }


        public IActionResult EnviarMailsAltas()
        {
            InscripcionesDA da = new InscripcionesDA();

            var result = da.USP_EnviarAltas();

            return Json(result);
        }

        [Authorize]
        public IActionResult HistorialEnviosAltas(DateTime fecEnvio)
        {
            DateTime fechaHoy = DateTime.Now;
            ViewBag.fecha_hoy = fechaHoy.ToString("yyyy-MM-dd");

            if (fecEnvio.Date == Convert.ToDateTime("01/01/0001").Date)
            {
                fecEnvio = DateTime.Now;
            }
            InscripcionesDA da = new InscripcionesDA();

            var model = da.GetAllAltasEnviadas(fecEnvio);

            return View(model);
        }


        [HttpPost]
        public IActionResult HistorialEnviosAltas(DateTime fecEnvio, string accion = "")
        {
            DateTime fechaHoy = DateTime.Now;
            ViewBag.fecha_hoy = fechaHoy.ToString("yyyy-MM-dd");

            if (fecEnvio.Date == Convert.ToDateTime("01/01/0001").Date)
            {
                fecEnvio = DateTime.Now;
            }
            InscripcionesDA da = new InscripcionesDA();

            var model = da.GetAllAltasEnviadas(fecEnvio);

            return View(model);

        }
    }
}