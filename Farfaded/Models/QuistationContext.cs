using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Farfaded.Models;
using System.Data.Entity;
namespace Farfaded.Data
{
    public class QuistionsContext : DbContext
    {
        public QuistionsContext() : base("Quistions")
        { }

  
        public DbSet<Quistion> Quistions { get; set; }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            modelBuilder.Entity<Quistion>().HasKey(x => x.IdQuestion);
          
        }
    }
}