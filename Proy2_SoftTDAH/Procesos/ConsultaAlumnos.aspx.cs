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
    public partial class ConsultaAlumnos : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionStringKey"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            SqlCommand sqlc = new SqlCommand("sp_ConsultarAlumno", conn);
            sqlc.CommandType = CommandType.StoredProcedure;
            conn.Open();
            sqlc.Parameters.AddWithValue("@Alu_ApePat", txtApePat.Text);
            sqlc.Parameters.AddWithValue("@Alu_FechNac", txtFechNac.Text);
            sqlc.Parameters.AddWithValue("@Diag_Desc", txtResultado.Text);
            SqlDataAdapter sda = new SqlDataAdapter(sqlc);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            SqlDataReader sdr = sqlc.ExecuteReader();
            gvconsulta.DataSource = dt;
            gvconsulta.DataBind();
            conn.Close();
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Procesos/PaginaPrincipal.aspx");
        }
    }
}