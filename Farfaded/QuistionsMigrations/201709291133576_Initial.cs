namespace Farfaded.QuistionsMigrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Initial : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Quistions",
                c => new
                    {
                        IdQuestion = c.Int(nullable: false),
                        IdFlat = c.Int(nullable: false),
                        Question = c.String(),
                        Answer = c.String(),
                        Status = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.IdQuestion);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Quistions");
        }
    }
}
