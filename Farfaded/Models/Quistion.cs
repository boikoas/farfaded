using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations.Schema;
namespace Farfaded.Models
{
    public class Quistion
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IdQuestion { get; set; }
        public int IdFlat { get; set; }
        public string Question { get; set; }
        public string Answer { get; set; }
        public bool Status { get; set; }
        }
}