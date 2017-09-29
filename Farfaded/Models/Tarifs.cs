using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations.Schema;
namespace Farfaded.Models
{
    public class Tarifs
    {
        
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IdTarif { get; set; }
        public int IdTypeEnergie { get; set; }
        public string Name { get; set; }
        public float Value { get; set; }
        public virtual ICollection<Energie> Energies { get; set; }
    }
}