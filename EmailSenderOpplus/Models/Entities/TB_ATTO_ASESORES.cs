using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using System.ComponentModel.DataAnnotations;

namespace EmailSenderOpplus.Models.Entities
{
    public class TB_ATTO_ASESORES
    {
        [Key]
        [Display(Name = "id")]
        public int ID { get; set; }

        [Display(Name = "DNI")]
        public string DNI { get; set; }

        [Display(Name = "NOMBRES")]
        public string NOMBRES { get; set; }

        [Display(Name = "ESTADO")]
        public string ESTADO { get; set; }



    }
}
