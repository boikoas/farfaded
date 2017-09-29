using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations.Schema;
namespace Farfaded.Models
{
    public class Company
    { 
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IdCompany { get; set; }
        public int IdHouse { get; set; }
        public string Name { get; set; }
        public virtual ICollection<House> Houses { get; set; }
    }
}