using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Npgsql;
using NpgsqlTypes;
using System.Data.SqlClient;
using System.Configuration;

namespace ControlCFE.control
{
    public partial class control_estadistica2 : System.Web.UI.Page
    {
        private conexionPostgresql conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new conexionPostgresql();
            //Tablas
            DataTable table = getData();
            e_tabla_datos.DataSource = getData();
            e_tabla_datos.DataBind();

           try
            {
                Int32 sumEficiencia = Convert.ToInt32(table.Compute("Sum(eficiencia)", ""));
                Int32 countEficiencia = Convert.ToInt32(table.Compute("Count(eficiencia)", ""));
                int avgEficiencia = sumEficiencia / countEficiencia;

                Int32 sumTx = Convert.ToInt32(table.Compute("Sum(tx)", ""));
                Int32 sumRx = Convert.ToInt32(table.Compute("Sum(rx)", ""));
                Int32 sumCrc = Convert.ToInt32(table.Compute("Sum(crc)", ""));

                avgEfici.Text = avgEficiencia.ToString();
                sumTxTxt.Text = sumTx.ToString();
                sumRxTxt.Text = sumRx.ToString();
                sumCrcTxt.Text = sumCrc.ToString();
            }
            catch (Exception ex)
            {
                ex.Data.ToString();
            }
        }

        public DataTable getData()
        {
            string fecha_inicio = Request.QueryString["fecha_inicio"];
            string fecha_final = Request.QueryString["fecha_final"];
            string disposit = Request.QueryString["disposit"];
            
            //string consulta = "SELECT d.clave_disp, d.descr_dis, d.protocolo, e.tx, e.rx, dnp.puerto, e.fecha, e.eficiencia, e.crc FROM disposit as d inner join estadist as e on d.clave_disp=e.clave_disp inner join dnp_config as dnp on e.clave_disp=dnp.clave_disp WHERE e.fecha::date >= '"+fecha_inicio+ "' and e.fecha::date <= '"+fecha_final+"' and d.clave_disp in (SELECT clave_disp FROM disposit WHERE descr_dis like 'S.E.%' or descr_dis like 'R.A.%')";
            string consulta = "SELECT d.clave_disp, d.descr_dis, d.protocolo, e.tx, e.rx, dnp.puerto, e.fecha, e.eficiencia, e.crc FROM disposit as d inner join estadist as e on d.clave_disp=e.clave_disp inner join dnp_config as dnp on e.clave_disp=dnp.clave_disp WHERE e.fecha::date >= '"+fecha_inicio+ "' and e.fecha::date <= '"+fecha_final+"' and d.clave_disp in (SELECT clave_disp FROM disposit " + (disposit == "todos" ? ")" : "WHERE descr_dis like '%"+disposit+"%')");
            Console.WriteLine(consulta);
            return this.conn.selectQuery(consulta);
        }
    }
}