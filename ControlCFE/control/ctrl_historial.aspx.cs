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
using System.Text;
using System.Configuration;

namespace ControlCFE.control
{
    public partial class ctrl_historial : System.Web.UI.Page
    {

        private conexionPostgresql conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new conexionPostgresql();

            if (!IsPostBack)
            {
                DataTable table = getData();

                tabla_datos.DataSource = getData();
                tabla_datos.DataBind();
            }
        }

        public DataTable getData()
        {
            string consulta = "SELECT e.clave_disp, e.clave, e.clave_sube, e.equipo, e.mensaje, (to_char(e.tiempoucm, 'DD-MM-YYYY HH12:MI:SS') ||'.'|| e.miliucm) as tiempo_ucm, (to_char(e.tiempocampo, 'DD-MM-YYYY HH12:MI:SS') ||'.'|| e.milicampo) as tiempo_campo, e.operadorrec FROM eventos as e inner join disposit as d on e.clave_disp = d.clave_disp WHERE d.descr_dis like 'S.E.%' or d.descr_dis like 'R.A';";
            return this.conn.selectQuery(consulta);
        }
    }
}