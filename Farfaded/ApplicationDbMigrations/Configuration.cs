namespace Farfaded.ApplicationDbMigrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class ApplicationConfiguration : DbMigrationsConfiguration<Farfaded.Models.ApplicationDbContext>
    {
        public ApplicationConfiguration()
        {
            AutomaticMigrationsEnabled = false;
            MigrationsDirectory = @"ApplicationDbMigrations";
        }

        protected override void Seed(Farfaded.Models.ApplicationDbContext context)
        {
            //  This method will be called after migrating to the latest version.

            //  You can use the DbSet<T>.AddOrUpdate() helper extension method 
            //  to avoid creating duplicate seed data. E.g.
            //
            //    context.People.AddOrUpdate(
            //      p => p.FullName,
            //      new Person { FullName = "Andrew Peters" },
            //      new Person { FullName = "Brice Lambson" },
            //      new Person { FullName = "Rowan Miller" }
            //    );
            //
        }
    }
}
