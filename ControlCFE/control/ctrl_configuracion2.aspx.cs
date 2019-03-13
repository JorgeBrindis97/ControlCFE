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
using System.Text;

namespace ControlCFE.control
{
    public partial class ctrl_configuracion2 : System.Web.UI.Page
    {
        private conexionPostgresql conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new conexionPostgresql();

            if(!IsPostBack)
            {
                getForm();
            }
        }

        public void getForm()
        {
            string id = Request.QueryString["id"];
            string consulta = "SELECT dis.clave_disp, dis.clave_sube, dis.descr_dis, dis,protocolo, d.dir_remota, d.dir_local, d.res_no_sol, d.esp_enlace, d.intentos, d.confir, d.fragmento, d.tiempo_esp, d.reintentos, d.confirmar, d.trama_max, d.puerto, d.tiempo_pre, d.tiempo_pos, d.direccionip, d.numprot, d.servicio, d.bkdireccionip, d.bkservicio, d.bktipo, d.redundancia FROM disposit dis inner join dnp_config d on dis.clave_disp = d.clave_disp WHERE d.clave_disp = '" + id + "'";

            conn.abrirConexion();
            NpgsqlCommand cmd = new NpgsqlCommand(consulta, this.conn.abrirConexion());
            NpgsqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                clave_disp.Text = reader["clave_disp"].ToString();
                clave_sube.Text = reader["clave_sube"].ToString();
                descr_dis.Text = reader["descr_dis"].ToString();
                protocolo.Text = reader["protocolo"].ToString();
                dir_remota.Text = reader["dir_remota"].ToString();
                dir_local.Text = reader["dir_local"].ToString();
                res_no_sol.Text = reader["res_no_sol"].ToString();
                esp_enlace.Text = reader["esp_enlace"].ToString();
                intentos.Text = reader["intentos"].ToString();
                confir.Text = reader["confir"].ToString();
                fragmento.Text = reader["fragmento"].ToString();
                tiempo_esp.Text = reader["tiempo_esp"].ToString();
                reintentos.Text = reader["reintentos"].ToString();
                confirmar.Text = reader["confirmar"].ToString();
                trama_max.Text = reader["trama_max"].ToString();
                puerto.Text = reader["puerto"].ToString();
                tiempo_pre.Text = reader["tiempo_pre"].ToString();
                tiempo_pos.Text = reader["tiempo_pos"].ToString();
                direccionip.Text = reader["direccionip"].ToString();
                numprot.Text = reader["numprot"].ToString();
                servicio.Text = reader["servicio"].ToString();
                bkdireccionip.Text = reader["bkdireccionip"].ToString();
                bkservicio.Text = reader["bkservicio"].ToString();
                bktipo.Text = reader["bktipo"].ToString();
                redundancia.Text = reader["redundancia"].ToString();
            }
        }
    }
}