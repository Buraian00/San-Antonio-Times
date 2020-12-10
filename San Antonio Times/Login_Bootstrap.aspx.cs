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
            Connexion conex = new Connexion();
            //MySqlConnection conn = new MySqlConnection("server=MYSQL5034.site4now.net; database=db_a6ac79_login; Uid=a6ac79_login; pwd=odioesto90");
            MySqlConnection conn = conex.getConexion();
            conn.Open();

            MySqlConnection conectanos = new MySqlConnection();
            
            String correo = this.txtCorreo.Text;
            String pass = this.txtPassword.Text;
            String query = ("select * from usuarios where correo= @correo and pass= sha2(CONCAT(@password, (SELECT salt FROM USUARIOS WHERE CORREO = @correo)), 256)"); ;
            MySqlCommand comando = new MySqlCommand(query, conn);
            comando.Parameters.Add(new MySqlParameter("@correo", correo));
            comando.Parameters.Add(new MySqlParameter("@password", pass));
            MySqlDataReader leer = comando.ExecuteReader();

            if (leer.Read())   //leer.Read() me arrojaba error, asique lo cambie a leer.HasRows
            {
                Session["correo"] = correo;
                Response.Redirect("SessionTest.aspx");
            }
            else
            {
                Response.Redirect("Registrar.aspx");
            }
            conn.Close();

        }
    }
}