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
    public class InscripcionesDA
    {
        public IEnumerable<TB_ALTA> GetAllAltas()
        {
            var result = new List<TB_ALTA>();

            using (var db = new ApplicationDbContext())
            {
                result = db.TB_ALTA.OrderByDescending(m => m.TITULAR).ToList();

                return result;
            }
        }



        public String USP_CargarAltas(string vNombre)
        {
            var result = "OK";

            var db = new ApplicationDbContext();
            try
            {
                using (var command = db.Database.GetDbConnection().CreateCommand())
                {

                    command.CommandText = "USP_ALTAS_SUBIR";
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


        public String USP_EnviarAltas()
        {
            var result = "OK";

            var db = new ApplicationDbContext();
            try
            {
                using (var command = db.Database.GetDbConnection().CreateCommand())
                {
                    command.CommandText = "USP_ALTAS_ENVIAR";
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


        public IEnumerable<ALTAS_MAIL_HISTORIAL> GetAllAltasEnviadas(DateTime fecEnvio)
        {
            var result = new List<ALTAS_MAIL_HISTORIAL>();

            using (var db = new ApplicationDbContext())
            {
                IQueryable<ALTAS_MAIL_HISTORIAL> query = db.ALTAS_MAIL_HISTORIAL.Where(item => item.fecha_hora_alta_envio.Date == fecEnvio.Date);

                result = query.OrderByDescending(m => m.fecha_hora_alta_envio).ToList();

                return result;

            }
        }



    }
}
