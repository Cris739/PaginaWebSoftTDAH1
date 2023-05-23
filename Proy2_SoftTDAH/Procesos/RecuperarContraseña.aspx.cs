using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proy2_SoftTDAH.Procesos
{
    public partial class RecuperarContraseña : System.Web.UI.Page
    {
        
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

        protected void btnRecover_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionStringKey"].ConnectionString;
            string email = txtEmail.Text;

            // Verificar si el correo electrónico existe en la base de datos
            if (CheckIfEmailExists(email))
            {
                // Generar una contraseña aleatoria
                string password = GenerateRandomPassword();

                // Actualizar la contraseña del usuario en la base de datos
                UpdateUserPassword(email, password);

                // Enviar un correo electrónico al usuario con la nueva contraseña
                SendEmail(email, password);

                lblMessage.Text = "Se ha enviado un correo electrónico con la nueva contraseña.";
                lblMessage.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblMessage.Text = "No se encontró ninguna cuenta asociada a ese correo electrónico.";
                lblMessage.Visible = true;
            }

            lblMensaje2.Text = "Se le ha enviado una nueva contraseña a su correo, por favor verifique.";
            lblMensaje2.Visible = true;
            txtEmail.Enabled = false;
        }

        private bool CheckIfEmailExists(string email)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionStringKey"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Usuario WHERE Usu_Correo = @Email", con))
                {
                    cmd.Parameters.AddWithValue("@Email", email);
                    con.Open();
                    int count = (int)cmd.ExecuteScalar();
                    return count > 0;
                }
            }
        }

        private void UpdateUserPassword(string email, string password)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionStringKey"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("UPDATE Usuario SET Usu_Contraseña = @Password WHERE Usu_Correo = @Email", con))
                {
                    cmd.Parameters.AddWithValue("@Password", password);
                    cmd.Parameters.AddWithValue("@Email", email);
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }

        private void SendEmail(string email, string password)
        {
            
                string senderEmail = "softwaresofttdah@gmail.com"; // Cambia esto con tu dirección de correo electrónico
                string senderPassword = "juigughjkarogkzx"; // Cambia esto con tu contraseña de correo electrónico

                MailMessage mail = new MailMessage();
                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com"); // Cambia esto con la configuración de tu servidor SMTP

                mail.From = new MailAddress(senderEmail);
                mail.To.Add(email);
                mail.Subject = "Recuperación de contraseña";
                mail.Body = $"Tu nueva contraseña es: {password}";

                smtpClient.Port = 587;
                smtpClient.Credentials = new NetworkCredential(senderEmail, senderPassword);
                smtpClient.EnableSsl = true;
            
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls;

            smtpClient.Send(mail);


        }

        private string GenerateRandomPassword()
        {
            const string allowedChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            Random random = new Random();
            char[] chars = new char[8];

            for (int i = 0; i < chars.Length; i++)
            {
                chars[i] = allowedChars[random.Next(allowedChars.Length)];
            }

            return new string(chars);
        }
    }
}