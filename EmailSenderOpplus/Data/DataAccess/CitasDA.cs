using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using System.Data;
using Microsoft.Data.SqlClient;
using EmailSenderOpplus.Models.Entities;
using Microsoft.EntityFrameworkCore;

namespace EmailSenderOpplus.Data.DataAccess
{
    public class CitasDA
    {

        public String USP_CargarArchivo(string vNombre)
        {
            var result = "OK";

            var db = new ApplicationDbContext();
            try
            {
                using (var command = db.Database.GetDbConnection().CreateCommand())
                {
                    
                    command.CommandText = "USP_CITAS_SUBIR";
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.Add(new SqlParameter("@archivo", System.Data.SqlDbType.VarChar));
                    command.Parameters["@archivo"].Value = vNombre;

                    db.Database.OpenConnection();
                    command.ExecuteNonQuery();
                    db.Database.CloseConnection();
                }
            }
            catch (Exception ex)
            {
                result = ex.Message;
            }

            return result;
        }


        public String USP_EnviarCitas()
        {
            var result = "OK";

            var db = new ApplicationDbContext();
            try
            {
                using (var command = db.Database.GetDbConnection().CreateCommand())
                {
                    command.CommandText = "USP_CITAS_ENVIAR";
                    command.CommandType = CommandType.StoredProcedure;                  

                    db.Database.OpenConnection();
                    command.ExecuteNonQuery();
                    db.Database.CloseConnection();
                }
            }
            catch (Exception ex)
            {
                result = ex.Message;
            }
            return result;
        }





        public IEnumerable<TB_HISTORIAL_CARGAS_CSV> GetAllCargas()
        {
            var result = new List<TB_HISTORIAL_CARGAS_CSV>();

            using (var db = new ApplicationDbContext())
            {
                result = db.TB_HISTORIAL_CARGAS_CSV.OrderByDescending(m => m.fecha).ToList();

                return result;
            }
        }



        public IEnumerable<TB_CITAS> GetAllCitas()
        {
            var result = new List<TB_CITAS>();

            using (var db = new ApplicationDbContext())
            {
                result = db.TB_CITAS.OrderByDescending(m => m.DNI).ToList();


                return result;
            }
        }



        public IEnumerable<CITAS_MAIL_HISTORIAL> GetAllCitasEnviadas(DateTime fecEnvio)
        {
            var result = new List<CITAS_MAIL_HISTORIAL>();

            using (var db = new ApplicationDbContext())
            {
                IQueryable<CITAS_MAIL_HISTORIAL> query = db.CITAS_MAIL_HISTORIAL.Where(item => item.fecha_hora_cita_envio.Date == fecEnvio.Date);

                result = query.OrderByDescending(m => m.fecha_hora_cita_envio).ToList();

                return result;

            }
        }


        



    }
}
