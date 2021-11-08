using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;


namespace EmailSenderOpplus.Models.Entities
{
    public class TB_ATTO_CONTROL1
    {
        [Key]
        [Display(Name = "id")]
        public Int64 ID { get; set; }

        [Display(Name = "CODIGO CENTRAL")]
        public string CODIGO_CENTRAL { get; set; }

        [Display(Name = "NRO DOCUMENTO")]
        public string NRO_DOCUMENTO { get; set; }

        [Display(Name = "OPERADOR")]
        public string? OPERADOR { get; set; }

        [Display(Name = "FECHA HORA")]
        [DisplayFormat(DataFormatString = "{0:ddd, d MMMM yyyy, hh:mm tt}")]        
        public DateTime? FECHA_H { get; set; }

        [Display(Name = "DURACION TOTAL")]
        public int? DURACION_TOTAL { get; set; }

        [Display(Name = "ID CAMPO")]
        public int? ID_CAMPO { get; set; }

        [Display(Name = "TIPO GESTION")]
        public string TIPO_GESTION { get; set; }

        [Display(Name = "NEGOCIO")]
        public string? NEGOCIO { get; set; }

        [Display(Name = "PRODUCTO SERVICIO")]
        public string? PRODUCTO_SERVICIO { get; set; }

        [Display(Name = "ACCION")]
        public string? ACCION { get; set; }

        [Display(Name = "OBSERVACION")]
        public string? OBSERVACION { get; set; }

        [Display(Name = "TELEFONO")]
        public string? TELEFONO { get; set; }

        [Display(Name = "TIPO_TELEFONO")]
        public string? TIPO_TELEFONO { get; set; }

        [Display(Name = "NRO INTENTOS")]
        public int? NRO_INTENTOS { get; set; }

        [Display(Name = "FECHA")]
        public string? FECHA { get; set; }

        [Display(Name = "HORA")]
        public string? HORA { get; set; }

        [Display(Name = "AÑO")]
        public int? ANIO { get; set; }

        [Display(Name = "MES")]
        public string? MES { get; set; }

        [Display(Name = "GESTION OP")]
        public string? GESTION_OP { get; set; }

        [Display(Name = "ASESOR")]
        public string? ASESOR { get; set; }

        [Display(Name = "ESTADO")]
        public string? ESTADO_ASESOR { get; set; }

        [Display(Name = "CONTRATO")]
        public string? CONTRATO { get; set; }

        [Display(Name = "FECHA ALTA CONTRATO")]
        public DateTime? FEC_ALTA_CONTRATO { get; set; }

        [Display(Name = "FECHA ACTIVACION")]
        public DateTime? FEC_ACTIVACION { get; set; }

        [Display(Name = "RESPONSABLE")]
        public string? RESPONSABLE { get; set; }

        [Display(Name = "FECHA ENVIO CRM")]
        public DateTime? FEC_ENVIO_CRM { get; set; }

        [Display(Name = "GESTION CRM")]
        public string? GESTION_CRM { get; set; }

        [Display(Name = "FECHA GESTION CRM")]
        public DateTime? FEC_GESTION_CRM { get; set; }

        [Display(Name = "FECHA 1CONSUMO TC")]
        public DateTime? FEC_1CONSUMO_TC { get; set; }

        [Display(Name = "FECHA BAJA TC")]
        public DateTime? FEC_BAJA_TC { get; set; }

        [Display(Name = "FECHA BAJA CRM")]
        public DateTime? FEC_BAJA_CRM { get; set; }

        [Display(Name = "MOTIVO BAJA")]
        public string? MOTIVO_BAJA { get; set; }

    }
}
