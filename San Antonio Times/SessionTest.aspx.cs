using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using San_Antonio_Times.Class;

namespace San_Antonio_Times
{
    public partial class SessionTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["correo"] != null)
            {
                switch (Session["nivel"])
                {
                    case "1":
                        Response.Redirect("Premium.aspx");
                        break;

                    default:
                        lblUser.Text = Session["usuario"].ToString();
                        lblcorreo.Text = Session["correo"].ToString();
                        lblcreacion.Text = Session["fechaCreacion"].ToString();
                        lblNivel.Text = Session["nivel"].ToString();
                        lblinicio.Text = Session["fechaInicioSus"].ToString();
                        lbltermino.Text = Session["fechaTerminoSus"].ToString();
                        break;

                }
            }
        }
    }
}