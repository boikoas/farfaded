using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations.Schema;
namespace Farfaded.Models
{
    public class House
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IdHouse { get; set; }
        public int IdFlat { get; set; }
        public int IdCompany { get; set; }
        public int IdInterview { get; set; }
        public string Adress { get; set; }
        public DateTime LoadDate { get; set; }

        public ICollection<Company> Companies { get; set; }
        public virtual ICollection<Flat> Flats { get; set; }
        public virtual ICollection<Interview> Interviews { get; set; }
    }
}