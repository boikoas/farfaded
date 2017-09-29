using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations.Schema;
namespace Farfaded.Models
{
    public class Interview
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IdInterview { get; set; }
        public int IdAnswerInterview { get; set; }
        public int IdHouse { get; set; }
        public string Question { get; set; }
        public DateTime LoadDate { get; set; }

        public virtual ICollection<AnswerInterview> AnswerInterviews { get; set; }
        public ICollection<House> Houses { get; set; }
    }
}