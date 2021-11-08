using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using System.ComponentModel.DataAnnotations;

namespace EmailSenderOpplus.Models.Entities
{
    public class TB_CITAS
    {
        [Key]
        [Display(Name = "ID")]
        public int ID { get; set; }

        [Display(Name = "PERIODO")]
        public string PERIODO { get; set; }

        [Display(Name = "FECHA RECEPCION")]
        public string FECHA_RECEPCION { get; set; }

        [Display(Name = "DNI")]
        public string DNI { get; set; }

        [Display(Name = "NOMBRE COMPLETO")]
        public string NOMBRE_COMPLETO { get; set; }

        [Display(Name = "TIPO")]
        public string TIPO { get; set; }

        [Display(Name = "BANCO ACREEDOR")]
        public string BANCO_ACREEDOR { get; set; }

        [Display(Name = "NRO PRESTAMO")]
        public string NUMERO_PRESTAMO { get; set; }

        [Display(Name = "MONEDA")]
        public string MONEDA { get; set; }

        [Display(Name = "MONTO CANCELAR")]
        public string MONTO_CANCELAR { get; set; }

        [Display(Name = "CELULAR")]
        public string CELULAR { get; set; }

        [Display(Name = "FUVEX")]
        public string FUVEX { get; set; }

        [Display(Name = "CONVENIO")]
        public string CONVENIO { get; set; }

        [Display(Name = "FECHA CITA")]
        public string FECHA_CITA { get; set; }

        [Display(Name = "HORA CITA")]
        public string HORA_CITA { get; set; }

        [Display(Name = "DIRECCION BANCO")]
        public string DIRECCION_BANCO { get; set; }
    }
}
