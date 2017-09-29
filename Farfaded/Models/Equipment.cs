using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations.Schema;
namespace Farfaded.Models
{
    public class Equipment
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IdEquipment { get; set; }
        public int IdFlat { get; set; }
        public float Value { get; set; }
        public string Name { get; set; }
        public bool Included { get; set; }
    

        public virtual ICollection<Flat> Flats { get; set; }
    }
}