using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using System.ComponentModel.DataAnnotations;

namespace EmailSenderOpplus.Models.Entities
{
    public class ALTAS_MAIL_HISTORIAL
    {
        [Key]
        [Display(Name = "id")]
        public int id { get; set; }

        [Display(Name = "TERMINAL")]
        public string terminal { get; set; }

        [Display(Name = "TITULAR")]
        public string titular { get; set; }

        [DisplayFormat(DataFormatString = "{0:ddd, d MMMM yyyy, hh:mm tt}")]
        [Display(Name = "FECHA HORA ENVIO")]
        public DateTime fecha_hora_alta_envio { get; set; }

        [Display(Name = "ESTADO")]
        public string estado { get; set; }
    }
}
