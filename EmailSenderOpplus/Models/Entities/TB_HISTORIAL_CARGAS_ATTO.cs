using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using System.ComponentModel.DataAnnotations;

namespace EmailSenderOpplus.Models.Entities
{
    public class TB_HISTORIAL_CARGAS_ATTO
    {
        [Key]
        [Display(Name = "codigo")]
        public int codigo { get; set; }

        [Display(Name = "Estado")]
        public string estado { get; set; }

        [Display(Name = "Archivo")]
        public string archivo { get; set; }

        [DisplayFormat(DataFormatString = "{0:ddd, d MMMM yyyy, hh:mm tt}")]
        [Display(Name = "Fecha Hora de Carga")]
        public DateTime fecha { get; set; }

    }
}
