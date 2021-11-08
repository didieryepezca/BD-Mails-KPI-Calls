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
    public class DesembolsosController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        [Authorize]
        public IActionResult CargarDesembolsos()
        {
            return View();
        }

        public IActionResult CargarDesembolsosCSV(string vNombre)
        {
            DesembolsosDA da = new DesembolsosDA();

            var result = da.USP_CargarDesembolsos(vNombre);

            return Json(result);
        }

        [Authorize]
        public IActionResult EnviarDesembolsos()
        {
            DesembolsosDA da = new DesembolsosDA();

            var model = da.GetAllDesembolsos();

            return View(model);
        }


        public IActionResult EnviarMailsDesembolsos()
        {
            DesembolsosDA da = new DesembolsosDA();

            var result = da.USP_EnviarDesembolsos();

            return Json(result);
        }


    }
}