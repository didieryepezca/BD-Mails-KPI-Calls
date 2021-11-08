using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using System.ComponentModel.DataAnnotations;

namespace EmailSenderOpplus.Models.Entities
{
    public class TB_ALTA
    {
        [Key]
        [Display(Name = "ID")]
        public int ID { get; set; }

        [Display(Name = "TERMINAL")]
        public string TERMINAL { get; set; }

        [Display(Name = "TITULAR")]
        public string TITULAR { get; set; }

    }
}
