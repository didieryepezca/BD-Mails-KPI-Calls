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
    public class AtentoDA
    {
        public IEnumerable<TB_ATTO_ASESORES> GetAllAsesores()
        {
            var result = new List<TB_ATTO_ASESORES>();

            using (var db = new ApplicationDbContext())
            {
                result = db.TB_ATTO_ASESORES.OrderByDescending(m => m.ID).ToList();

                return result;
            }
        }


        public IEnumerable<TB_HISTORIAL_CARGAS_ATTO> GetAllCargasAtento()
        {
            var result = new List<TB_HISTORIAL_CARGAS_ATTO>();

            using (var db = new ApplicationDbContext())
            {
                result = db.TB_HISTORIAL_CARGAS_ATTO.OrderByDescending(m => m.fecha).ToList();

                return result;
            }
        }


        public String USP_CargarVolcado(string vNombre, int vMes, int vAnio)
        {
            var result = "OK";

            var db = new ApplicationDbContext();
            try
            {
                using (var command = db.Database.GetDbConnection().CreateCommand())
                {

                    command.CommandText = "USP_ATTO_SUBIR_VOLCADOS";
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.Add(new SqlParameter("@archivo", System.Data.SqlDbType.VarChar));
                    command.Parameters["@archivo"].Value = vNombre;

                    command.Parameters.Add(new SqlParameter("@mes", System.Data.SqlDbType.Int));
                    command.Parameters["@mes"].Value = vMes;

                    command.Parameters.Add(new SqlParameter("@anio", System.Data.SqlDbType.Int));
                    command.Parameters["@anio"].Value = vAnio;

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


        public String USP_CargarProgreso(string vNombre)
        {
            var result = "OK";

            var db = new ApplicationDbContext();
            try
            {
                using (var command = db.Database.GetDbConnection().CreateCommand())
                {

                    command.CommandText = "USP_ATTO_SUBIR_PROGRESO";
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



        public String USP_CargarAsesores(string vNombre)
        {
            var result = "OK";

            var db = new ApplicationDbContext();
            try
            {
                using (var command = db.Database.GetDbConnection().CreateCommand())
                {

                    command.CommandText = "USP_ATTO_SUBIR_ASESORES";
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




        public string USP_ATTO_CONTROL1(DateTime vFecIni, DateTime vFecFin)
        {

            var result = "OK";
            //int insert_out = 0;
            //int update_out = 0;

            var db = new ApplicationDbContext();
            try
            {
                using (var command = db.Database.GetDbConnection().CreateCommand())
                {

                    command.CommandText = "USP_ATTO_CONTROL1";
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.Add(new SqlParameter("@FECHA_INICIO", System.Data.SqlDbType.Date));
                    command.Parameters["@FECHA_INICIO"].Value = vFecIni;

                    command.Parameters.Add(new SqlParameter("@FECHA_FIN", System.Data.SqlDbType.Date));
                    command.Parameters["@FECHA_FIN"].Value = vFecFin;

                    command.CommandTimeout = 0;
                    

                    db.Database.OpenConnection();
                    command.ExecuteNonQuery();
                    db.Database.CloseConnection();
                }

            }
            catch (Exception ex)
            {

                result = ex.Message;
            }

            return result;//asd
        }


        public IEnumerable<TB_ATTO_CONTROL1> GetAllDatosControl1()
        {
            var result = new List<TB_ATTO_CONTROL1>();

            using (var db = new ApplicationDbContext())
            {
                result = db.TB_ATTO_CONTROL1.OrderByDescending(m => m.FECHA_H).ToList();

                return result;
            }
        }


        public IEnumerable<TB_ATTO_KPI_MENSUAL> GetKPIsMensual()
        {
            var result = new List<TB_ATTO_KPI_MENSUAL>();

            using (var db = new ApplicationDbContext())
            {
                result = db.TB_ATTO_KPI_MENSUAL.OrderByDescending(m => m.MES).ThenBy(n => n.ANIO).ToList();

                return result;
            }
        }


        public IEnumerable<TB_ATTO_KPI_DIARIO> GetKPIsDiario()
        {
            var result = new List<TB_ATTO_KPI_DIARIO>();

            using (var db = new ApplicationDbContext())
            {
                result = db.TB_ATTO_KPI_DIARIO.OrderByDescending(m => m.DIA).ToList();

                return result;
            }
        }



    }
}
