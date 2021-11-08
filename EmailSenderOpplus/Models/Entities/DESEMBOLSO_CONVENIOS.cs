using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using System.ComponentModel.DataAnnotations;

namespace EmailSenderOpplus.Models.Entities
{
    public class DESEMBOLSO_CONVENIOS
    {
        [Key]
        [Display(Name = "ID")]
        public int ID { get; set; }

        [Display(Name = "NRO EXPEDIENTE")]
        public string NRO_EXPEDIENTE { get; set; }

        [Display(Name = "CLIENTE DOI")]
        public string CLIENTE_DOI { get; set; }

        [Display(Name = "APELLIDO PAT")]
        public string APE_PATERNO { get; set; }

        [Display(Name = "APELLIDO MAT")]
        public string APE_MATERNO { get; set; }

        [Display(Name = "NOMBRES")]
        public string NOMBRES { get; set; }

        [Display(Name = "CONVENIO")]
        public string CONVENIO { get; set; }

        [Display(Name = "PRESTAMO")]
        public string PRESTAMO { get; set; }

        [Display(Name = "COD OFICINA")]
        public string CODIGO_OFICINA { get; set; }

        [Display(Name = "NOMB OFICINA")]
        public string NOMBRE_OFICINA { get; set; }

        [Display(Name = "CORREO GERENTE")]
        public string CORREO_GERENTE { get; set; }

        [Display(Name = "CORREO SUBGERENTE")]
        public string CORREO_SUBGERENTE { get; set; }


    }
}
