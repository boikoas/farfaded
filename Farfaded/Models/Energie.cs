using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations.Schema;
namespace Farfaded.Models
{
    public class Energie
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IdTypeEnergie { get; set; }
        public int IdFlat { get; set; }
        public int IdTarif{ get; set; }
        public string Name { get; set; }
        public float Value { get; set; }
        public ICollection<Flat> Flats { get; set; }
        public virtual ICollection<Tarifs> Tarifses { get; set; }
    }
}