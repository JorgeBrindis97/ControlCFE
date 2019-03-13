using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Npgsql;
using System.Data;

namespace ControlCFE
{
    public class conexionPostgresql
    {
        private NpgsqlConnection conn;
        public conexionPostgresql()
        {


        }


        public NpgsqlConnection abrirConexion()
        {
            this.conn = new NpgsqlConnection();
            string cadenaConexion = "Server=localhost; Port=5432; Userid=postgres; Password=Kesadilla987; Database=bd405;";

            if (!string.IsNullOrWhiteSpace(cadenaConexion))
            {
                try
                {
                    conn = new NpgsqlConnection(cadenaConexion);
                    conn.Open();
                }
                catch (Exception)
                {
                    conn.Close();
                }
            }
            return conn;
        }

        public void closeConnection()
        {
            this.conn.Close();
        }

        public DataTable selectQuery(string sql)
        {
            this.abrirConexion();
            DataTable dt = new DataTable();
            NpgsqlCommand cmd = new NpgsqlCommand(sql, this.conn);
            NpgsqlDataAdapter da = new NpgsqlDataAdapter(cmd);
            da.Fill(dt);
            da.Dispose();
            cmd.Dispose();
            this.closeConnection();
            return dt;
        }
    }
}