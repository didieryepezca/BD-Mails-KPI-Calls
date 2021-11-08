using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using System.ComponentModel.DataAnnotations;

namespace EmailSenderOpplus.Models.Entities
{
    public class CITAS_MAIL_HISTORIAL
    {
        [Key]
        [Display(Name = "codigo")]
        public int codigo { get; set; }

        [Display(Name = "DNI")]
        public string DNI { get; set; }

        [Display(Name = "Nombres")]
        public string nombres { get; set; }

        [Display(Name = "Fecha Cita")]
        public string fecha_cita { get; set; }

        [Display(Name = "Hora Cita")]
        public string hora_cita { get; set; }

        [Display(Name = "Banco")]
        public string banco { get; set; }

        [DisplayFormat(DataFormatString = "{0:ddd, d MMMM yyyy, hh:mm tt}")]
        [Display(Name = "Fecha Hora Envio")]
        public DateTime fecha_hora_cita_envio { get; set; }

        [Display(Name = "Estado Envio")]
        public string estado { get; set; }


    }
}
