using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;
using NpgsqlTypes;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

namespace ControlCFE.control
{
    public partial class ctrl_configuracion : System.Web.UI.Page
    {
        private conexionPostgresql conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new conexionPostgresql();

            if(!IsPostBack)
            {
                DataTable table = getData();

                c_tabla_datos.DataSource = getData();
                c_tabla_datos.DataBind();
            }
        }

        public DataTable getData()
        {
            string consulta = "SELECT * FROM disposit WHERE descr_dis like 'S.E.%' or descr_dis like 'R.A.%';";
            return conn.selectQuery(consulta);
        }

        protected void id_Command(object sender, CommandEventArgs e)
        {
            Button btnID = (Button)sender;
            RepeaterItem ri  = (RepeaterItem)btnID.NamingContainer;
            string id = e.CommandArgument.ToString();

            Response.Redirect("ctrl_configuracion2.aspx?id=" + id);
        }
    }
}