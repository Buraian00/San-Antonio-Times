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
    public partial class Login_Bootstrap : System.Web.UI.Page
    {
 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {

            Usuario usu = new Usuario();
            string correo = this.txtCorreo.Text;
            string password = this.txtPassword.Text;
            int estado = usu.validarUsuario(correo,password);

            if (estado == 0) 
            {
                Session["correo"] = usu.getUsuData(correo).correo;
                Session["usuario"] = usu.getUsuData(correo).nombreUsuario;
                Session["nivel"] = usu.getUsuData(correo).nivel;
                Session["fechaCreacion"] = usu.getUsuData(correo).fechaCreacion;
                Session["fechaInicioSus"] = usu.getUsuData(correo).fechaInicioSus;
                Session["fechaTerminoSus"] = usu.getUsuData(correo).fechaTerminoSus;

                Response.Redirect("SessionTest.aspx");
            }
            else
            {
                Response.Redirect("Registrar.aspx");
            }
        }
    }
}