using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using San_Antonio_Times.Class;


namespace San_Antonio_Times
{
    public partial class Registrar : System.Web.UI.Page
    {
        protected void btnRegistrar_Click(object sender, EventArgs e)
        {

            Random random = new Random();
            int intSalt = random.Next(999999, 9999999);
            string salt = intSalt.ToString();
            Usuario usu = new Usuario();
            string user = this.txtUser.Text;
            string correo = this.txtCorreo.Text;
            string pass = this.txtPassword.Text;
            int nivel;
            string resultado;

            if (rbGratis.Checked)
            {
                nivel = 0;
                resultado = usu.registrarUsuarioGratis(user, correo, pass, salt, nivel);
                LoginRedirect();
            }
            else if (rbPago.Checked)
            {
                nivel = 1;
                resultado = usu.registrarUsuarioPremium(user, correo, pass, salt, nivel);
                LoginRedirect();
            }
        }
            public void LoginRedirect()
            {
                Response.Redirect("Login_Bootstrap.aspx", false);
                HttpContext.Current.ApplicationInstance.CompleteRequest();
            }
        }
}