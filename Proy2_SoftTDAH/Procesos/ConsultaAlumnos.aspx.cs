using System;
using System.Collections.Generic;
using System.Configuration;
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

            conn.Open();
            string queryObtenerPromedio11 = "SELECT Promedio_Notas FROM Alumno";
            SqlCommand commandObtenerPromedio11 = new SqlCommand(queryObtenerPromedio11, conn);
            object resultado11 = commandObtenerPromedio11.ExecuteScalar();
            conn.Close();
            if (resultado11 != null)
            {
                txtPromSalon.Text = resultado11.ToString();
            }
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
            panelPromedio.Visible = true;
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Procesos/PaginaPrincipal.aspx");
        }

        protected void gvconsulta_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                decimal promedioCarte = ObtenerPromedioNotasDesdeBD(); // Obtener el promedio desde la base de datos

                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    decimal numero = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "PromNotasSalon"));

                    if (numero < promedioCarte)
                    {
                        e.Row.Cells[6].BackColor = System.Drawing.ColorTranslator.FromHtml("#ff574d");
                    }
                    else
                    {
                        e.Row.Cells[6].BackColor = System.Drawing.ColorTranslator.FromHtml("#1466c3");
                    }
                }
            }
        }
        private decimal ObtenerPromedioNotasDesdeBD()
        {
            decimal promedio = 0;

            // Configurar y abrir la conexión a la base de datos
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringKey"].ConnectionString))
            {
                connection.Open();

                // Consulta SQL para obtener el promedio
                string query = "SELECT AVG(Promedio_Notas) FROM Alumno";
                SqlCommand command = new SqlCommand(query, connection);

                // Ejecutar la consulta y obtener el resultado
                object result = command.ExecuteScalar();

                // Verificar si el resultado es válido y convertirlo a decimal
                if (result != null && result != DBNull.Value)
                {
                    promedio = Convert.ToDecimal(result);
                }

                connection.Close();
            }

            return promedio;
        }
    }
   
}
