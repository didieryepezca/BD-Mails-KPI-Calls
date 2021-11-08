using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;


using EmailSenderOpplus.Models;
using EmailSenderOpplus.Models.Entities;


namespace EmailSenderOpplus.Data
{
    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }

        public ApplicationDbContext()
        {

            Database.SetCommandTimeout(0); //30 minutos de ejecucion

        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionBuilder)
        {
            optionBuilder.UseSqlServer("Server=172.17.1.29;" +
                    "Database=PruebaC;" +
                    "Trusted_Connection=True;" +
                    "MultipleActiveResultSets=True;" +
                    "Connection Timeout=36000");
        }

        public DbSet<TB_CITAS> TB_CITAS { get; set; }
        public DbSet<TB_HISTORIAL_CARGAS_CSV> TB_HISTORIAL_CARGAS_CSV { get; set; }
        public DbSet<CITAS_MAIL_HISTORIAL> CITAS_MAIL_HISTORIAL { get; set; }
        public DbSet<TB_ALTA> TB_ALTA { get; set; }
        public DbSet<ALTAS_MAIL_HISTORIAL> ALTAS_MAIL_HISTORIAL { get; set; }
        public DbSet<DESEMBOLSO_CONVENIOS> DESEMBOLSO_CONVENIOS { get; set; }
        public DbSet<TB_HISTORIAL_CARGAS_ATTO> TB_HISTORIAL_CARGAS_ATTO { get; set; }
        public DbSet<TB_ATTO_ASESORES> TB_ATTO_ASESORES { get; set; }
        public DbSet<TB_ATTO_CONTROL1> TB_ATTO_CONTROL1 { get; set; }
        public DbSet<TB_ATTO_KPI_MENSUAL> TB_ATTO_KPI_MENSUAL { get; set; }
        public DbSet<TB_ATTO_KPI_DIARIO> TB_ATTO_KPI_DIARIO { get; set; }


    }
}
