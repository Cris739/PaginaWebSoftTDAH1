using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proy2_SoftTDAH.Procesos
{
    
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionStringKey"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Procesos/CrearCuenta.aspx");
        }

        protected void btnAcceder_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from Usuario where Usu_Correo=@Usu_Correo AND Usu_Contraseña=@Usu_Contraseña", conn);
            cmd.Parameters.AddWithValue("@Usu_Correo", txtUsuario.Text);
            cmd.Parameters.AddWithValue("@Usu_Contraseña", txtContraseña.Text);
            SqlDataAdapter data = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            data.Fill(dt);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            if (dt.Rows.Count > 0)
            {
                Session["oUserCodI"] = dt.Rows[0]["Usu_Id"].ToString();
                Session["oCuentaUsu"] = dt.Rows[0]["Usu_Correo"].ToString();
                Session["oNombre"] = dt.Rows[0]["Usu_Nom"].ToString();
                Session["oApellidoPaterno"] = dt.Rows[0]["Usu_ApePat"].ToString();

                Response.Redirect("~/Procesos/PaginaPrincipal.aspx");

            }
            else
            {
                Label1.Text = "Tu usuario o contraseña es incorrecta";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Procesos/RecuperarContraseña.aspx");
        }
    }
}