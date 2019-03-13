using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Npgsql;
using NpgsqlTypes;
using System.Data.Sql;
using System.Text;
using System.Configuration;
using System.Web.Script.Serialization;

namespace ControlCFE.control
{
    public partial class control_estadistica : System.Web.UI.Page
    {
        private conexionPostgresql conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new conexionPostgresql();
            if (!IsPostBack)
            {
                dropDownGetData();

                this.Form.Attributes.Add("autocomplete","off");
            }
        }

        protected void btnBuscar_Command(object sender, CommandEventArgs e)
        {
            string fecha_inicio1 = fecha_inicio.Text.ToString();
            string fecha_final1 = fecha_final.Text.ToString();
            string disposit = tipo_disp.SelectedValue.ToString();
            Console.WriteLine("-------");
            Console.WriteLine(disposit);
            Response.Redirect("control_estadistica2.aspx?fecha_inicio="+fecha_inicio1+"&fecha_final="+fecha_final1+"&disposit="+disposit);
        }

        protected void dropDownGetData()
        {
            string sql = "SELECT clave_disp, descr_dis FROM disposit WHERE descr_dis like 'S.E.%' or descr_dis like 'R.A%'";
            NpgsqlCommand cmd = new NpgsqlCommand(sql, this.conn.abrirConexion());
            NpgsqlDataAdapter da = new NpgsqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            disp.DataSource = ds;
            disp.DataValueField = "clave_disp";
            disp.DataTextField = "descr_dis";
            disp.DataBind();
        }
    }
}