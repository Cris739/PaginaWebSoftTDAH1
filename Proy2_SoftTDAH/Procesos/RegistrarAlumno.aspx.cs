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
    public partial class RegistrarAlumno : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionStringKey"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("sp_RegistrarAlumno", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Alu_Nom", SqlDbType.VarChar).Value = txtNombre.Text;
            cmd.Parameters.Add("@Alu_ApePat", SqlDbType.VarChar).Value = txtApellidoPaterno.Text;
            cmd.Parameters.Add("@Alu_ApeMat", SqlDbType.VarChar).Value = txtApellidoMaterno.Text;
            cmd.Parameters.Add("@Alu_Grado", SqlDbType.VarChar).Value = txtGrado.Text;
            cmd.Parameters.Add("@Alu_FechNac", SqlDbType.Date).Value = txtFechNacim.Text;
            //cmd.Parameters.Add("@Promedio_Notas", SqlDbType.VarChar).Value = txtPromNotas.Text;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("~/Procesos/RegistradoCorrectamente.aspx");
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Procesos/PaginaPrincipal.aspx");
        }
    }
}