using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

using EmailSenderOpplus.Models;
using EmailSenderOpplus.Data.DataAccess;
using Microsoft.AspNetCore.Authorization;


using OfficeOpenXml;
using System.IO;

namespace EmailSenderOpplus.Controllers
{
    public class AtentoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }


        [Authorize]
        public IActionResult CargarBasesAtento()
        {
            return View();
        }

        [Authorize]
        public IActionResult VerAsesores()
        {
            var da = new AtentoDA();

            var asesores = da.GetAllAsesores();

            return View(asesores);
        }

        [Authorize]
        public IActionResult HistorialCargasAtento()
        {
            var da = new AtentoDA();

            var cargas = da.GetAllCargasAtento();

            return View(cargas);
        }


        public IActionResult CargarVolcadoCSV(string vNombre, int vMes, int vAnio)
        {
            AtentoDA da = new AtentoDA();

            var result = da.USP_CargarVolcado(vNombre, vMes, vAnio);

            return Json(result);
        }


        public IActionResult CargarProgresoCSV(string vNombre)
        {
            AtentoDA da = new AtentoDA();

            var result = da.USP_CargarProgreso(vNombre);

            return Json(result);
        }


        public IActionResult CargarAsesoresCSV(string vNombre)
        {
            AtentoDA da = new AtentoDA();

            var result = da.USP_CargarAsesores(vNombre);

            return Json(result);
        }

        [Authorize]
        public IActionResult Control1(DateTime fecInicio) {

            DateTime fechaHoy = DateTime.Now;
            ViewBag.fecha_hoy = fechaHoy.ToString("yyyy-MM-dd");

            if (fecInicio.Date == Convert.ToDateTime("01/01/0001").Date)
            {
                fecInicio = DateTime.Now;
            }

            ViewBag.resultado = "INICIO";

            return View();
        }

        [Authorize]
        [HttpPost]
        public IActionResult Control1(DateTime fecInicio, DateTime fecFin)
        {
            var result = "";

            DateTime fechaHoy = DateTime.Now;
            ViewBag.fecha_hoy = fechaHoy.ToString("yyyy-MM-dd");

            if (fecInicio.Date == Convert.ToDateTime("01/01/0001").Date)
            {
                fecInicio = DateTime.Now;
            }

            var da = new AtentoDA();

            try {
                var proceso = da.USP_ATTO_CONTROL1(fecInicio, fecFin);

                ViewBag.resultado = proceso;

            } catch (Exception e)
            {
                result = e.Message;
                ViewBag.resultado = result;
            }
            return View();
        }

        public FileStreamResult ExportToExcel()
        {
            //instalar paquete EPPlus.Core v.1.5.4
            using (var p = new ExcelPackage())
            {
                var da = new AtentoDA();

                var datos = da.GetAllDatosControl1().ToList();

                var ws = p.Workbook.Worksheets.Add("Control1");

                var rowCounter = 2;

                foreach (var d in datos)
                {
                    ws.Cells["A1:B3"].LoadFromCollection(Collection: datos, PrintHeaders: true);

                    ws.Column(5).Style.Numberformat.Format = "dd-mm-yyyy"; //Fecha 
                    //ws.Column(25).Style.Numberformat.Format = "dd-mm-yyyy";
                    //ws.Column(26).Style.Numberformat.Format = "dd-mm-yyyy";
                    //ws.Column(29).Style.Numberformat.Format = "dd-mm-yyyy";
                    //ws.Column(29).Style.Numberformat.Format = "dd-mm-yyyy";
                    //ws.Column(30).Style.Numberformat.Format = "dd-mm-yyyy";
                    //ws.Column(31).Style.Numberformat.Format = "dd-mm-yyyy";

                    rowCounter++;
                }
                //ws.Column(1).AutoFit();
                //ws.Column(2).AutoFit();

                var stream = new MemoryStream(p.GetAsByteArray());

                return File(stream, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "AtentoControl1.xlsx");
            }
        }


        [Authorize]
        public IActionResult VerKPIS()
        {
            var da = new AtentoDA();

            var kpisdiario = da.GetKPIsDiario();

            var kpismensual = da.GetKPIsMensual();

            ViewBag.kpisMensualList = kpismensual;


            return View(kpisdiario);
        }


        public FileStreamResult ExportKpiDiario()
        {
            //instalar paquete EPPlus.Core v.1.5.4
            using (var p = new ExcelPackage())
            {
                var da = new AtentoDA();

                var datos = da.GetKPIsDiario().ToList();

                var ws = p.Workbook.Worksheets.Add("DiarioKPIs");

                var rowCounter = 2;

                foreach (var d in datos)
                {
                    ws.Cells["A1:B3"].LoadFromCollection(Collection: datos, PrintHeaders: true);

                    ws.Column(2).Style.Numberformat.Format = "dd-mm-yyyy"; //Fecha                     

                    rowCounter++;
                }               

                var stream = new MemoryStream(p.GetAsByteArray());

                return File(stream, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "KPI_Diario.xlsx");
            }
        }

        public FileStreamResult ExportKpiMensual()
        {
            //instalar paquete EPPlus.Core v.1.5.4
            using (var p = new ExcelPackage())
            {
                var da = new AtentoDA();

                var datos = da.GetKPIsMensual().ToList();

                var ws = p.Workbook.Worksheets.Add("MensualKPIs");

                var rowCounter = 2;

                foreach (var d in datos)
                {
                    ws.Cells["A1:B3"].LoadFromCollection(Collection: datos, PrintHeaders: true);                                    

                    rowCounter++;
                }

                var stream = new MemoryStream(p.GetAsByteArray());

                return File(stream, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "KPI_Mensual.xlsx");
            }
        }





    }
}