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
    public class DesembolsosDA
    {
        public IEnumerable<DESEMBOLSO_CONVENIOS> GetAllDesembolsos()
        {
            var result = new List<DESEMBOLSO_CONVENIOS>();

            using (var db = new ApplicationDbContext())
            {
                result = db.DESEMBOLSO_CONVENIOS.OrderByDescending(m => m.APE_PATERNO).ToList();

                return result;
            }
        }

        public String USP_CargarDesembolsos(string vNombre)
        {
            var result = "OK";

            var db = new ApplicationDbContext();
            try
            {
                using (var command = db.Database.GetDbConnection().CreateCommand())
                {

                    command.CommandText = "SUBIR_DESEMBOLSOS_CONVENIO";
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



        public String USP_EnviarDesembolsos()
        {
            var result = "OK";

            var db = new ApplicationDbContext();
            try
            {
                using (var command = db.Database.GetDbConnection().CreateCommand())
                {
                    command.CommandText = "MAIL_DESEMBOLSOS_CONVENIOS";
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





    }
}
