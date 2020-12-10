using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace San_Antonio_Times
{
    public partial class Premium : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime now = DateTime.Now;
            DateTime end = DateTime.Parse(Session["fecha"].ToString());
            lblnivel.Text = Session["nivel"].ToString();
            lblfecha.Text = Session["fecha"].ToString();
            lblnow.Text = now.ToString();
            if (end<=now)
            {
                MySqlConnection conn = new MySqlConnection("server=MYSQL5034.site4now.net; database=db_a6ac79_login; Uid=a6ac79_login; pwd=odioesto90");
                conn.Open();
                MySqlConnection conectanos = new MySqlConnection();
                String query = "UPDATE usuarios SET nivel = 0 WHERE correo = '" + Session["correo"] + "'";
                MySqlCommand comando = new MySqlCommand(query, conn);
                MySqlDataReader leer = comando.ExecuteReader();
                Response.Redirect("Login.aspx");

                lblestado.Text = "Estas acabado compa";
            }
            else
            {
                lblestado.Text = "todo chido";
            }
        }
    }
}