using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations.Schema;
namespace Farfaded.Models
{
    public class Flat
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IdFlat { get; set; }
        public int IdQuestion { get; set; }
        public int IdEquipment { get; set; }
        public int IdAnswerInterview { get; set; }
        public int IdTypeEnergie { get; set; }
        public string Owner { get; set; }
        public ICollection<House> Houses { get; set; }
        public virtual ICollection<Equipment> Equipments { get; set; }
        public virtual ICollection<Energie> Energies { get; set; }
        public virtual ICollection<Questions> Questionses { get; set; }
        public virtual ICollection<AnswerInterview> AnswerInterviews { get; set; }

    }
}