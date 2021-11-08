using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using System.ComponentModel.DataAnnotations;

namespace EmailSenderOpplus.Models.Entities
{
    public class TB_ATTO_KPI_MENSUAL
    {
        [Key]
        [Display(Name = "ID")]
        public int ID { get; set; }

        [Display(Name = "MES")]
        public string MES { get; set; }

        [Display(Name = "AÑO")]
        public int ANIO { get; set; }

        [Display(Name = "TMO x MES")]
        public decimal TMO_MES { get; set; }

        [Display(Name = "TMO CE x MES")]
        public decimal TMO_CE_MES { get; set; }

        [Display(Name = "TMO CNE x MES")]
        public decimal TMO_CNE_MES { get; set; }

        [Display(Name = "TMO NC x MES")]
        public decimal TMO_NC_MES { get; set; }

        [Display(Name = "CE x MES")]
        public int CE { get; set; }

        [Display(Name = "CNE x MES")]
        public int CNE { get; set; }

        [Display(Name = "NC x MES")]
        public int NC { get; set; }

        [Display(Name = "TOTAL MARCACIONES")]
        public int TOTAL_MARCACIONES { get; set; }

        [Display(Name = "CONTACTABILIDAD")]
        public decimal CONTACTABILIDAD { get; set; }

        [Display(Name = "EFECTIVIDAD")]
        public decimal EFECTIVIDAD { get; set; }

        [Display(Name = "BASE MENSUAL")]
        public int BASE_MENSUAL { get; set; }

        [Display(Name = "INTENSIDAD MENSUAL")]
        public decimal INTENSIDAD_BASE_MENSUAL { get; set; }

        [Display(Name = "Z DURACION")]
        public decimal Z_DURACION { get; set; }

        [Display(Name = "Z DURACION HRS")]
        public decimal Z_DURACION_HORAS { get; set; }

        [Display(Name = "PRODUCTIVIDAD")]
        public decimal PRODUCTIVIDAD { get; set; }

    }
}
