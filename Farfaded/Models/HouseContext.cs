using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Farfaded.Models;
using System.Data.Entity;

namespace Farfaded.Data
{
    public class HouseContext : DbContext
    {
        public HouseContext() : base("Entities")
        { }

        public DbSet<House> Houses { get; set; }
        public DbSet<Flat> Flats { get; set; }
        public DbSet<Company> Companys { get; set; }
        public DbSet<Tarifs> Tarifs { get; set; }
        public DbSet<Questions> Questions { get; set; }
        public DbSet<Interview> Interviews { get; set; }
        public DbSet<Equipment> Equipments { get; set; }
        public DbSet<Energie> Energies { get; set; }
        public DbSet<AnswerInterview> AnswerInterviews { get; set; }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            modelBuilder.Entity<House>().HasKey(x => x.IdHouse).HasRequired(x => x.Companies);
            modelBuilder.Entity<Flat>().HasKey(x => x.IdFlat).HasRequired(x => x.Houses);
            modelBuilder.Entity<Company>().HasKey(x => x.IdCompany).HasOptional(x => x.Houses);
            modelBuilder.Entity<Tarifs>().HasKey(x => x.IdTarif);
            modelBuilder.Entity<Questions>().HasKey(x => x.IdQuestion).HasRequired(x => x.Flats);
            modelBuilder.Entity<Interview>().HasKey(x => x.IdInterview).HasRequired(x => x.Houses);
            modelBuilder.Entity<Equipment>().HasKey(x => x.IdEquipment).HasRequired(x => x.Flats);
            modelBuilder.Entity<Energie>().HasKey(x => x.IdTypeEnergie).HasRequired(x => x.Flats);
            modelBuilder.Entity<AnswerInterview>().HasKey(x => x.IdAnswerInterview).HasRequired(x => x.Flats);
        }
    }

}

