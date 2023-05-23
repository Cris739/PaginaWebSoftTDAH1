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
    public partial class CrearCuenta : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionStringKey"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Procesos/Default.aspx");
        }

        protected void btnVolver2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Procesos/Default.aspx");
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("sp_CrearCuenta", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Usu_Nom", txtNombre.Text);
            cmd.Parameters.AddWithValue("@Usu_ApePat", txtApellidoPaterno.Text);
            cmd.Parameters.AddWithValue("@Usu_ApeMat", txtApellidoMaterno.Text);
            cmd.Parameters.AddWithValue("@Cargo_Nom", txtCargo.Text);
            cmd.Parameters.AddWithValue("@Usu_Correo", txtCorreo.Text);
            cmd.Parameters.AddWithValue("@Usu_Contraseña", txtContraseña.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("~/Procesos/CreacionCorrectamente.aspx");
        }
    }
}