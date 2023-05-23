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
    public partial class ComparacionNotas : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionStringKey"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ddlUsuarios();
            }
        }
        protected void ddlUsuarios()
        {
            try
            {
                using (conn)
                {
                    using (SqlCommand cmd = new SqlCommand("select * from Alumno", conn))
                    {
                        conn.Open();
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            if (dr.HasRows)
                            {
                                DropDownList1.DataSource = dr;
                                DropDownList1.DataTextField = "Alu_Nom";
                                DropDownList1.DataBind();
                                DropDownList1.Items.Insert(0, new ListItem("-SELECCIONAR-", "0"));
                            }
                        }
                        conn.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.Message.ToString());
            }
        }
        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Procesos/Diagnostico.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //gvAccesosUsuarios.Visible = true;
            //string query = "select Alu_Nom,Alu_ApePat,Promedio_Notas from Alumno where Alu_Nom like '%'+ @Alu_Nom +'%' group by fecha,nomUsuario Order by fecha,nomUsuario";
            //sacar promedio de todos los alumnos 
            //comparativo (por debajo del nivel o promedio - resultado /buscadores)
            //Porcentaje de posible transtorno de tdah
            //automatizar
            //proceso
            //SqlCommand sqlc = new SqlCommand(query, conn);
            //sqlc.Parameters.AddWithValue("@fechainicial", txtDate1.Text);
            //sqlc.Parameters.AddWithValue("@fechafinal", txtDate2.Text);
            //sqlc.Parameters.AddWithValue("@nomUsuario", DropDownList1.Text);
            //conn.Open();
            //SqlDataAdapter sda = new SqlDataAdapter(sqlc);
            //DataTable dt = new DataTable();
            //sda.Fill(dt);
            //SqlDataReader sdr = sqlc.ExecuteReader();
            //gvAccesosUsuarios.DataSource = dt;
            //gvAccesosUsuarios.DataBind();
            //conn.Close();
        }
    }
}