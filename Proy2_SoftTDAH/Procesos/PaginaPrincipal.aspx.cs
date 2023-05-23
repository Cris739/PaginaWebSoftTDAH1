using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proy2_SoftTDAH.Procesos
{
    public partial class PaginaPrincipal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblCod.Text = Convert.ToString(Session["oUserCodI"]);
                lblNom.Text = Convert.ToString(Session["oNombre"]);
                lblApePaterno.Text = Convert.ToString(Session["oApellidoPaterno"]);
                lblCorreo.Text = Convert.ToString(Session["oCuentaUsu"]);
                
            }
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Procesos/RegistrarAlumno.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Procesos/ConsultaAlumnos.aspx");
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Procesos/Default.aspx");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Procesos/ManualdeUsuario.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Procesos/Diagnostico.aspx");
        }
    }
}