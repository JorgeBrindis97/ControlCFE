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
    public partial class ctrl_direcciones_dns : System.Web.UI.Page
    {

        private conexionPostgresql conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new conexionPostgresql();

            if (!IsPostBack)
            {
                DataTable table = getDataDNS();

                dnp_tabla_datos.DataSource = getDataDNS();
                dnp_tabla_datos.DataBind();
            }
        }

        public DataTable getDataDNS()
        {
            string consulta = "SELECT DISTINCT * FROM dnp_config as d inner join disposit as di on d.clave_disp = di.clave_disp WHERE di.descr_dis like 'S.E.%' or di.descr_dis like 'R.A.%';";
            return this.conn.selectQuery(consulta);
        }
    }
}