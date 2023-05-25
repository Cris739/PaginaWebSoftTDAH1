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
    public partial class Notas : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionStringKey"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!this.IsPostBack)
            {
                this.BindEmployee();

              
            }
            conn.Open();

            string query1 = "UPDATE Alumno SET PromNotasSalon = (CComunicacion + CMatematicas + CIngles + CFisica + CQuimica + CComputacion + CReligion + CEFisica + CCienciasSociales + CArte) / 10";
            using (SqlCommand command = new SqlCommand(query1, conn))
            {
                command.ExecuteNonQuery();
            }
            conn.Close();

            conn.Open();
            string queryPromedioCurso1 = "UPDATE Alumno SET PromNotasComu = (SELECT AVG(CComunicacion) FROM Alumno)";
            SqlCommand commandPromedioCurso1 = new SqlCommand(queryPromedioCurso1, conn);
            commandPromedioCurso1.ExecuteNonQuery();
            conn.Close();
            conn.Open();
            string queryObtenerPromedio1 = "SELECT PromNotasComu FROM Alumno";
            SqlCommand commandObtenerPromedio = new SqlCommand(queryObtenerPromedio1, conn);
            object resultado1 = commandObtenerPromedio.ExecuteScalar();
            conn.Close();
            if (resultado1 != null)
            {
                txtCursoComu.Text = resultado1.ToString();
            }

            conn.Open();
            string queryPromedioCurso2 = "UPDATE Alumno SET PromNotasMate = (SELECT AVG(CMatematicas) FROM Alumno)";
            SqlCommand commandPromedioCurso2 = new SqlCommand(queryPromedioCurso2, conn);
            commandPromedioCurso2.ExecuteNonQuery();
            conn.Close();
            conn.Open();
            string queryObtenerPromedio2 = "SELECT PromNotasMate FROM Alumno";
            SqlCommand commandObtenerPromedio2 = new SqlCommand(queryObtenerPromedio2, conn);
            object resultado2 = commandObtenerPromedio2.ExecuteScalar();
            conn.Close();
            if (resultado2 != null)
            {
                txtCursoMate.Text = resultado2.ToString();
            }


            conn.Open();
            string queryPromedioCurso3 = "UPDATE Alumno SET PromNotasIngles = (SELECT AVG(CIngles) FROM Alumno)";
            SqlCommand commandPromedioCurso3 = new SqlCommand(queryPromedioCurso3, conn);
            commandPromedioCurso3.ExecuteNonQuery();
            conn.Close();
            conn.Open();
            string queryObtenerPromedio3 = "SELECT PromNotasIngles FROM Alumno";
            SqlCommand commandObtenerPromedio3 = new SqlCommand(queryObtenerPromedio3, conn);
            object resultado3 = commandObtenerPromedio3.ExecuteScalar();
            conn.Close();
            if (resultado3 != null)
            {
                txtCursoIng.Text = resultado3.ToString();
            }


            conn.Open();
            string queryPromedioCurso4 = "UPDATE Alumno SET PromNotasFisica = (SELECT AVG(CFisica) FROM Alumno)";
            SqlCommand commandPromedioCurso4 = new SqlCommand(queryPromedioCurso4, conn);
            commandPromedioCurso4.ExecuteNonQuery();
            conn.Close();
            conn.Open();
            string queryObtenerPromedio4 = "SELECT PromNotasFisica FROM Alumno";
            SqlCommand commandObtenerPromedio4 = new SqlCommand(queryObtenerPromedio4, conn);
            object resultado4 = commandObtenerPromedio4.ExecuteScalar();
            conn.Close();
            if (resultado4 != null)
            {
                txtCursoFisi.Text = resultado4.ToString();
            }

            conn.Open();
            string queryPromedioCurso5 = "UPDATE Alumno SET PromNotasQuimica = (SELECT AVG(CQuimica) FROM Alumno)";
            SqlCommand commandPromedioCurso5 = new SqlCommand(queryPromedioCurso5, conn);
            commandPromedioCurso5.ExecuteNonQuery();
            conn.Close();
            conn.Open();
            string queryObtenerPromedio5 = "SELECT PromNotasQuimica FROM Alumno";
            SqlCommand commandObtenerPromedio5 = new SqlCommand(queryObtenerPromedio5, conn);
            object resultado5 = commandObtenerPromedio5.ExecuteScalar();
            conn.Close();
            if (resultado5 != null)
            {
                txtCursoQuimi.Text = resultado5.ToString();
            }

           

            conn.Open();
            string queryPromedioCurso6 = "UPDATE Alumno SET PromNotasCompu = (SELECT AVG(CComputacion) FROM Alumno)";
            SqlCommand commandPromedioCurso6 = new SqlCommand(queryPromedioCurso6, conn);
            commandPromedioCurso6.ExecuteNonQuery();
            conn.Close();
            conn.Open();
            string queryObtenerPromedio6 = "SELECT PromNotasCompu FROM Alumno";
            SqlCommand commandObtenerPromedio6 = new SqlCommand(queryObtenerPromedio6, conn);
            object resultado6 = commandObtenerPromedio6.ExecuteScalar();
            conn.Close();
            if (resultado6 != null)
            {
                txtCursoCompu.Text = resultado6.ToString();
            }


            conn.Open();
            string queryPromedioCurso7 = "UPDATE Alumno SET PromNotasReli = (SELECT AVG(CReligion) FROM Alumno)";
            SqlCommand commandPromedioCurso7 = new SqlCommand(queryPromedioCurso7, conn);
            commandPromedioCurso7.ExecuteNonQuery();
            conn.Close();
            conn.Open();
            string queryObtenerPromedio7 = "SELECT PromNotasReli FROM Alumno";
            SqlCommand commandObtenerPromedio7 = new SqlCommand(queryObtenerPromedio7, conn);
            object resultado7 = commandObtenerPromedio7.ExecuteScalar();
            conn.Close();
            if (resultado7 != null)
            {
                txtCursoReli.Text = resultado7.ToString();
            }


            conn.Open();
            string queryPromedioCurso8 = "UPDATE Alumno SET PromNotasEduFi = (SELECT AVG(CEFisica) FROM Alumno)";
            SqlCommand commandPromedioCurso8 = new SqlCommand(queryPromedioCurso8, conn);
            commandPromedioCurso8.ExecuteNonQuery();
            conn.Close();
            conn.Open();
            string queryObtenerPromedio8 = "SELECT PromNotasEduFi FROM Alumno";
            SqlCommand commandObtenerPromedio8 = new SqlCommand(queryObtenerPromedio8, conn);
            object resultado8 = commandObtenerPromedio8.ExecuteScalar();
            conn.Close();
            if (resultado8 != null)
            {
                txtCursoEduFisi.Text = resultado8.ToString();
            }

            conn.Open();
            string queryPromedioCurso9 = "UPDATE Alumno SET PromNotasEduSoc = (SELECT AVG(CCienciasSociales) FROM Alumno)";
            SqlCommand commandPromedioCurso9 = new SqlCommand(queryPromedioCurso9, conn);
            commandPromedioCurso9.ExecuteNonQuery();
            conn.Close();
            conn.Open();
            string queryObtenerPromedio9 = "SELECT PromNotasEduSoc FROM Alumno";
            SqlCommand commandObtenerPromedio9 = new SqlCommand(queryObtenerPromedio9, conn);
            object resultado9 = commandObtenerPromedio9.ExecuteScalar();
            conn.Close();
            if (resultado9 != null)
            {
                txtCursoCSoci.Text = resultado9.ToString();
            }

            conn.Open();
            string queryPromedioCurso10 = "UPDATE Alumno SET PromNotasArte = (SELECT AVG(CArte) FROM Alumno)";
            SqlCommand commandPromedioCurso10 = new SqlCommand(queryPromedioCurso10, conn);
            commandPromedioCurso10.ExecuteNonQuery();
            conn.Close();
            conn.Open();
            string queryObtenerPromedio10 = "SELECT PromNotasArte FROM Alumno";
            SqlCommand commandObtenerPromedio10 = new SqlCommand(queryObtenerPromedio10, conn);
            object resultado10 = commandObtenerPromedio10.ExecuteScalar();
            conn.Close();
            if (resultado10 != null)
            {
                txtCursoArte.Text = resultado10.ToString();
            }

            conn.Open();
            string queryPromedioCurso11 = "UPDATE Alumno SET Promedio_Notas = (SELECT AVG(PromNotasSalon) FROM Alumno)";
            SqlCommand commandPromedioCurso11 = new SqlCommand(queryPromedioCurso11, conn);
            commandPromedioCurso11.ExecuteNonQuery();
            conn.Close();
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




        protected void CargarTabla(string oPlaca)
        {
            SqlCommand cmd = new SqlCommand("sp_MostrarDatosNotas", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Alu_ApePat", SqlDbType.VarChar).Value = txtBuscar.Text;
            cmd.Connection = conn;
            conn.Open();

            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            
        }

        private void ClearControls()
        {
            hfAddEdit.Value = "Agregar";
            btnSave.Text = "Agregar";
            lblHeading.Text = "Registrar Notas";
            hfAddEditEmployeeId.Value = "0";
            hfDeleteEmployeeId.Value = "0";
            //txtNombres.Text = string.Empty;
            //txtApePaterno.Text = string.Empty;
            //txtApeMaterno.Text = string.Empty;
            txtComunicacion.Text = string.Empty;
            txtMatematicas.Text = string.Empty;
            txtIngles.Text = string.Empty;
            txtfisica.Text = string.Empty;
            txtQuimica.Text = string.Empty;
            txtComputacion.Text = string.Empty;
            txtReligion.Text = string.Empty;
            txtEduFisica.Text = string.Empty;
            txtCSociales.Text = string.Empty;
            txtArte.Text = string.Empty;

        }
        private void BindEmployee()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM Alumno", conn);
            SqlDataAdapter sda = new SqlDataAdapter();
            cmd.Connection = conn;
            sda.SelectCommand = cmd;
            DataSet ds = new DataSet();
            sda.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

            BootstrapCollapsExpand();

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            CargarTabla(txtBuscar.Text);
            PanelGridView.Visible = true;
            panelpromedioscurso.Visible = true;
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            lblHeading.Text = "Agregar Notas";


            hfAddEditEmployeeId.Value = (sender as Button).CommandArgument;


            //txtNombres.Text = ((sender as Button).NamingContainer as GridViewRow).Cells[1].Text.Replace("&nbsp;", "");
            //txtApePaterno.Text = ((sender as Button).NamingContainer as GridViewRow).Cells[2].Text;
            //txtApeMaterno.Text = ((sender as Button).NamingContainer as GridViewRow).Cells[3].Text.Replace("&nbsp;", "");
            txtComunicacion.Text = ((sender as Button).NamingContainer as GridViewRow).Cells[7].Text.Replace("&nbsp;", "");
            txtMatematicas.Text = ((sender as Button).NamingContainer as GridViewRow).Cells[8].Text.Replace("&nbsp;", "");
            txtIngles.Text = ((sender as Button).NamingContainer as GridViewRow).Cells[9].Text.Replace("&nbsp;", "");
            txtfisica.Text = ((sender as Button).NamingContainer as GridViewRow).Cells[10].Text.Replace("&nbsp;", "");
            txtQuimica.Text = ((sender as Button).NamingContainer as GridViewRow).Cells[11].Text.Replace("&nbsp;", "");
            txtComputacion.Text = ((sender as Button).NamingContainer as GridViewRow).Cells[12].Text.Replace("&nbsp;", "");
            txtReligion.Text = ((sender as Button).NamingContainer as GridViewRow).Cells[13].Text.Replace("&nbsp;", "");
            txtEduFisica.Text = ((sender as Button).NamingContainer as GridViewRow).Cells[14].Text.Replace("&nbsp;", "");
            txtCSociales.Text = ((sender as Button).NamingContainer as GridViewRow).Cells[15].Text.Replace("&nbsp;", "");
            txtArte.Text = ((sender as Button).NamingContainer as GridViewRow).Cells[16].Text.Replace("&nbsp;", "");




            btnSave.Text = "Agregar";


            BootstrapCollapsExpand();


            mpeAddUpdateEmployee.Show();
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            lblHeading.Text = "Actualizar Notas";


            hfAddEditEmployeeId.Value = (sender as Button).CommandArgument;


            //txtNombres.Text = ((sender as Button).NamingContainer as GridViewRow).Cells[1].Text.Replace("&nbsp;", "");
            //txtApePaterno.Text = ((sender as Button).NamingContainer as GridViewRow).Cells[2].Text;
            //txtApeMaterno.Text = ((sender as Button).NamingContainer as GridViewRow).Cells[3].Text.Replace("&nbsp;", "");
            txtComunicacion.Text = ((sender as Button).NamingContainer as GridViewRow).Cells[7].Text.Replace("&nbsp;", "");
            txtMatematicas.Text = ((sender as Button).NamingContainer as GridViewRow).Cells[8].Text.Replace("&nbsp;", "");
            txtIngles.Text = ((sender as Button).NamingContainer as GridViewRow).Cells[9].Text.Replace("&nbsp;", "");
            txtfisica.Text = ((sender as Button).NamingContainer as GridViewRow).Cells[10].Text.Replace("&nbsp;", "");
            txtQuimica.Text = ((sender as Button).NamingContainer as GridViewRow).Cells[11].Text.Replace("&nbsp;", "");
            txtComputacion.Text = ((sender as Button).NamingContainer as GridViewRow).Cells[12].Text.Replace("&nbsp;", "");
            txtReligion.Text = ((sender as Button).NamingContainer as GridViewRow).Cells[13].Text.Replace("&nbsp;", "");
            txtEduFisica.Text = ((sender as Button).NamingContainer as GridViewRow).Cells[14].Text.Replace("&nbsp;", "");
            txtCSociales.Text = ((sender as Button).NamingContainer as GridViewRow).Cells[15].Text.Replace("&nbsp;", "");
            txtArte.Text = ((sender as Button).NamingContainer as GridViewRow).Cells[16].Text.Replace("&nbsp;", "");





            btnSave.Text = "Actualizar";


            BootstrapCollapsExpand();


            mpeAddUpdateEmployee.Show();
        }

        protected void Save(object sender, EventArgs e)
        {

            int employeeId = Convert.ToInt32(hfAddEditEmployeeId.Value);

            string query = string.Empty;

            if (employeeId > 0)
            {
                query = "UPDATE Alumno SET CComunicacion=@CComunicacion, CMatematicas=@CMatematicas, CIngles=@CIngles, CFisica=@CFisica, CQuimica=@CQuimica, CComputacion=@CComputacion, CReligion=@CReligion, CEFisica=@CEFisica, CCienciasSociales=@CCienciasSociales, CArte=@CArte WHERE Alu_Id=@Alu_Id";
            }
            else
            {
                query = "INSERT INTO Alumno (CComunicacion, CMatematicas, CIngles, CFisica, CQuimica, CComputacion, CReligion, CEFisica, CCienciasSociales, CArte ) VALUES(@CComunicacion, @CMatematicas, @CIngles, @CFisica, @CQuimica, @CComputacion, @CReligion, @CEFisica, @CCienciasSociales, @CArte)";
            }

            SqlCommand cmd = new SqlCommand(query);

            if (employeeId > 0)
            {
                cmd.Parameters.AddWithValue("@Alu_Id", employeeId);

            }
            cmd.Parameters.AddWithValue("@CComunicacion", txtComunicacion.Text);
            cmd.Parameters.AddWithValue("@CMatematicas", txtMatematicas.Text);
            cmd.Parameters.AddWithValue("@CIngles", txtIngles.Text);
            cmd.Parameters.AddWithValue("@CFisica", txtfisica.Text);
            cmd.Parameters.AddWithValue("@CQuimica", txtQuimica.Text);
            cmd.Parameters.AddWithValue("@CComputacion", txtComputacion.Text);
            cmd.Parameters.AddWithValue("@CReligion", txtReligion.Text);
            cmd.Parameters.AddWithValue("@CEFisica", txtEduFisica.Text);
            cmd.Parameters.AddWithValue("@CCienciasSociales", txtCSociales.Text);
            cmd.Parameters.AddWithValue("@CArte", txtArte.Text);
            cmd.Connection = conn;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            BindEmployee();
            mpeAddUpdateEmployee.Hide();
            ClearControls();
        }

        private void BootstrapCollapsExpand()
        {
            if (this.GridView1.Rows.Count > 0)
            {

                GridView1.HeaderRow.Cells[8].Attributes["data-class"] = "expand";


                GridView1.HeaderRow.Cells[9].Attributes["data-hide"] = "expand";
                GridView1.HeaderRow.Cells[10].Attributes["data-hide"] = "expand";
                GridView1.HeaderRow.Cells[11].Attributes["data-hide"] = "expand";
                GridView1.HeaderRow.Cells[12].Attributes["data-hide"] = "expand";
                GridView1.HeaderRow.Cells[13].Attributes["data-hide"] = "expand";
                GridView1.HeaderRow.Cells[14].Attributes["data-hide"] = "expand";
                GridView1.HeaderRow.Cells[15].Attributes["data-hide"] = "expand";
                GridView1.HeaderRow.Cells[16].Attributes["data-hide"] = "expand";
                GridView1.HeaderRow.Cells[17].Attributes["data-hide"] = "expand";
               

                GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
                    if (e.Row.RowType == DataControlRowType.DataRow)
                    {
                        decimal promedioCarte = ObtenerPromedioDesdeBDComu(); // Obtener el promedio desde la base de datos

                        if (e.Row.RowType == DataControlRowType.DataRow)
                        {
                            decimal numero = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "CComunicacion"));

                            if (numero < promedioCarte)
                            {
                                e.Row.Cells[7].ForeColor = System.Drawing.Color.Red;
                            }
                            else
                            {
                                e.Row.Cells[7].ForeColor = System.Drawing.Color.Blue;
                            }
                        }
                    }

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                decimal promedioCarte = ObtenerPromedioDesdeBDMate(); // Obtener el promedio desde la base de datos

                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    decimal numero = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "CMatematicas"));

                    if (numero < promedioCarte)
                    {
                        e.Row.Cells[8].ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        e.Row.Cells[8].ForeColor = System.Drawing.Color.Blue;
                    }
                }
            }

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                decimal promedioCarte = ObtenerPromedioDesdeBDIngles(); // Obtener el promedio desde la base de datos

                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    decimal numero = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "CIngles"));

                    if (numero < promedioCarte)
                    {
                        e.Row.Cells[9].ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        e.Row.Cells[9].ForeColor = System.Drawing.Color.Blue;
                    }
                }
            }

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                decimal promedioCarte = ObtenerPromedioDesdeBDFisi(); // Obtener el promedio desde la base de datos

                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    decimal numero = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "CFisica"));

                    if (numero < promedioCarte)
                    {
                        e.Row.Cells[10].ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        e.Row.Cells[10].ForeColor = System.Drawing.Color.Blue;
                    }
                }
            }

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                decimal promedioCarte = ObtenerPromedioDesdeBDQuimi(); // Obtener el promedio desde la base de datos

                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    decimal numero = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "CQuimica"));

                    if (numero < promedioCarte)
                    {
                        e.Row.Cells[11].ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        e.Row.Cells[11].ForeColor = System.Drawing.Color.Blue;
                    }
                }
            }

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                decimal promedioCarte = ObtenerPromedioDesdeBDCompu(); // Obtener el promedio desde la base de datos

                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    decimal numero = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "CComputacion"));

                    if (numero < promedioCarte)
                    {
                        e.Row.Cells[12].ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        e.Row.Cells[12].ForeColor = System.Drawing.Color.Blue;
                    }
                }
            }

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                decimal promedioCarte = ObtenerPromedioDesdeBDReli(); // Obtener el promedio desde la base de datos

                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    decimal numero = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "CReligion"));

                    if (numero < promedioCarte)
                    {
                        e.Row.Cells[13].ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        e.Row.Cells[13].ForeColor = System.Drawing.Color.Blue;
                    }
                }
            }

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                decimal promedioCarte = ObtenerPromedioDesdeBDEFisi(); // Obtener el promedio desde la base de datos

                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    decimal numero = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "CEFisica"));

                    if (numero < promedioCarte)
                    {
                        e.Row.Cells[14].ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        e.Row.Cells[14].ForeColor = System.Drawing.Color.Blue;
                    }
                }
            }

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                decimal promedioCarte = ObtenerPromedioDesdeBDCSocia(); // Obtener el promedio desde la base de datos

                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    decimal numero = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "CCienciasSociales"));

                    if (numero < promedioCarte)
                    {
                        e.Row.Cells[15].ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        e.Row.Cells[15].ForeColor = System.Drawing.Color.Blue;
                    }
                }
            }

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                decimal promedioCarte = ObtenerPromedioDesdeBDArte(); // Obtener el promedio desde la base de datos

                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    decimal numero = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "CArte"));

                    if (numero < promedioCarte)
                    {
                        e.Row.Cells[16].ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        e.Row.Cells[16].ForeColor = System.Drawing.Color.Blue;
                    }
                }
            }   

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                int Alu_Id = Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Alu_Id"));

                decimal promedioNotas = ObtenerPromedioNotasDesdeBD(Alu_Id);

                decimal numero = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "PromNotasSalon"));

                if (numero < promedioNotas)
                {
                    e.Row.Cells[17].BackColor = System.Drawing.ColorTranslator.FromHtml("#ff574d");
                }
                else
                {
                    e.Row.Cells[17].BackColor = System.Drawing.ColorTranslator.FromHtml("#1466c3");
                }
            }
        }
        private decimal ObtenerPromedioNotasDesdeBD(int Alu_Id)
{
    decimal promedioNotas = 0;

            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringKey"].ConnectionString))
            {
        string query = "SELECT Promedio_Notas FROM Alumno WHERE Alu_Id = @Alu_Id";
        SqlCommand command = new SqlCommand(query, connection);
        command.Parameters.AddWithValue("@Alu_Id", Alu_Id);

        connection.Open();
        SqlDataReader reader = command.ExecuteReader();

        if (reader.Read() && !reader.IsDBNull(reader.GetOrdinal("Promedio_Notas")))
        {
            promedioNotas = reader.GetDecimal(reader.GetOrdinal("Promedio_Notas"));
        }

        reader.Close();
    }

    return promedioNotas;
}

        private decimal ObtenerPromedioDesdeBDArte()
        {
            decimal promedio = 0;

            // Configurar y abrir la conexión a la base de datos
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringKey"].ConnectionString))
            {
                connection.Open();

                // Consulta SQL para obtener el promedio
                string query = "SELECT AVG(CArte) FROM Alumno";
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

        private decimal ObtenerPromedioDesdeBDComu()
        {
            decimal promedio = 0;

            // Configurar y abrir la conexión a la base de datos
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringKey"].ConnectionString))
            {
                connection.Open();

                // Consulta SQL para obtener el promedio
                string query = "SELECT AVG(CComunicacion) FROM Alumno";
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

        private decimal ObtenerPromedioDesdeBDMate()
        {
            decimal promedio = 0;

            // Configurar y abrir la conexión a la base de datos
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringKey"].ConnectionString))
            {
                connection.Open();

                // Consulta SQL para obtener el promedio
                string query = "SELECT AVG(CMatematicas) FROM Alumno";
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

        private decimal ObtenerPromedioDesdeBDIngles()
        {
            decimal promedio = 0;

            // Configurar y abrir la conexión a la base de datos
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringKey"].ConnectionString))
            {
                connection.Open();

                // Consulta SQL para obtener el promedio
                string query = "SELECT AVG(CIngles) FROM Alumno";
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

        private decimal ObtenerPromedioDesdeBDFisi()
        {
            decimal promedio = 0;

            // Configurar y abrir la conexión a la base de datos
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringKey"].ConnectionString))
            {
                connection.Open();

                // Consulta SQL para obtener el promedio
                string query = "SELECT AVG(CFisica) FROM Alumno";
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

        private decimal ObtenerPromedioDesdeBDQuimi()
        {
            decimal promedio = 0;

            // Configurar y abrir la conexión a la base de datos
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringKey"].ConnectionString))
            {
                connection.Open();

                // Consulta SQL para obtener el promedio
                string query = "SELECT AVG(CQuimica) FROM Alumno";
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

        private decimal ObtenerPromedioDesdeBDCompu()
        {
            decimal promedio = 0;

            // Configurar y abrir la conexión a la base de datos
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringKey"].ConnectionString))
            {
                connection.Open();

                // Consulta SQL para obtener el promedio
                string query = "SELECT AVG(CComputacion) FROM Alumno";
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

        private decimal ObtenerPromedioDesdeBDReli()
        {
            decimal promedio = 0;

            // Configurar y abrir la conexión a la base de datos
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringKey"].ConnectionString))
            {
                connection.Open();

                // Consulta SQL para obtener el promedio
                string query = "SELECT AVG(CReligion) FROM Alumno";
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

        private decimal ObtenerPromedioDesdeBDEFisi()
        {
            decimal promedio = 0;

            // Configurar y abrir la conexión a la base de datos
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringKey"].ConnectionString))
            {
                connection.Open();

                // Consulta SQL para obtener el promedio
                string query = "SELECT AVG(CEFisica) FROM Alumno";
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

        private decimal ObtenerPromedioDesdeBDCSocia()
        {
            decimal promedio = 0;

            // Configurar y abrir la conexión a la base de datos
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringKey"].ConnectionString))
            {
                connection.Open();

                // Consulta SQL para obtener el promedio
                string query = "SELECT AVG(CCienciasSociales) FROM Alumno";
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