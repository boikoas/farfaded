using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations.Schema;
namespace Farfaded.Models
{
    public class AnswerInterview
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IdAnswerInterview { get; set; }
        public int IdInterview { get; set; }
        public int IdFlat { get; set; }
        public string Answer { get; set; }
        public bool Status { get; set; }

        public  ICollection<Interview> Interviews { get; set; }
        public  ICollection<Flat> Flats { get; set; }
    }
}