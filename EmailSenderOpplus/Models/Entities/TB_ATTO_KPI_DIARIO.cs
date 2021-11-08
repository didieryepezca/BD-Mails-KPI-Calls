using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using System.ComponentModel.DataAnnotations;


namespace EmailSenderOpplus.Models.Entities
{
    public class TB_ATTO_KPI_DIARIO
    {
        [Key]
        [Display(Name = "ID")]
        public int ID { get; set; }

        [Display(Name = "DIA")]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}")]
        public DateTime DIA { get; set; }

        [Display(Name = "MES")]
        public string MES { get; set; }

        [Display(Name = "AÑO")]
        public int ANIO { get; set; }

        [Display(Name = "TMO x DIA")]
        public decimal TMO_DIA { get; set; }

        [Display(Name = "TMO CE x DIA")]
        public decimal TMO_CE_DIA { get; set; }

        [Display(Name = "TMO CNE x DIA")]
        public decimal TMO_CNE_DIA { get; set; }

        [Display(Name = "TMO NC x DIA")]
        public decimal TMO_NC_DIA { get; set; }

        [Display(Name = "CE x DIA")]
        public int CE_DIA { get; set; }

        [Display(Name = "CNE x DIA")]
        public int CNE_DIA { get; set; }

        [Display(Name = "NC x DIA")]
        public int NC_DIA { get; set; }

        [Display(Name = "TOTAL MARCACIONES DIA")]
        public int TOTAL_MARCACIONES_DIA { get; set; }

        [Display(Name = "CONTACTABILIDAD DIA")]
        public decimal CONTACTABILIDAD_DIA { get; set; }

        [Display(Name = "EFECTIVIDAD DIA")]
        public decimal EFECTIVIDAD_DIA { get; set; }

        [Display(Name = "BASE GESTIONADA")]
        public int BASE { get; set; }

        [Display(Name = "INTENSIDAD BASE GEST")]
        public decimal INTENSIDAD_BASE { get; set; }

        [Display(Name = "Z DURACION DIA")]
        public decimal Z_DURACION_DIA { get; set; }

        [Display(Name = "Z DURACION HRS DIA")]
        public decimal Z_DURACION_HORAS_DIA { get; set; }

        [Display(Name = "PRODUCTIVIDAD DIA")]
        public decimal PRODUCTIVIDAD_DIA { get; set; }
    }
}
