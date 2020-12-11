using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using San_Antonio_Times.Class;

namespace San_Antonio_Times
{
    public partial class Premium : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime now = DateTime.Now;
            DateTime end = DateTime.Parse(Session["fechaTerminoSus"].ToString());
            lblnivel.Text = Session["nivel"].ToString();
            lblfecha.Text = Session["fechaTerminoSus"].ToString();
            string correo = Session["correo"].ToString();
            lblnow.Text = now.ToString();
            Usuario usu = new Usuario();
            if (end<=now)
            {
                usu.actualizarUsuario(correo);
                lblestado.Text = "Estas acabado compa";
            }
            else
            {
                lblestado.Text = "todo chido";
            }
        }
    }
}