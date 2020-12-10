using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;


namespace San_Antonio_Times
{
    public partial class Registrar : System.Web.UI.Page
    {
        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            Random random = new Random();
            int intSalt = random.Next(999999, 9999999);
            string salt = intSalt.ToString();


            MySqlConnection conn = new MySqlConnection("server=MYSQL5034.site4now.net; database=db_a6ac79_login; Uid=a6ac79_login; pwd=odioesto90");
            conn.Open();
            MySqlConnection conectanos = new MySqlConnection();
            String user = this.txtUser.Text;
            String correo = this.txtCorreo.Text;
            String pass = this.txtPassword.Text;
            int nivel = 0;
            int suscripcion = 0;

            if (rbGratis.Checked)
            {
                nivel = 0;
                suscripcion = 0;
                String query = ("INSERT INTO usuarios (user, correo, pass, salt, nivel, suscripcion) VALUES (@username, @correo, sha2(CONCAT(@password, @salt), 256), @salt, @nivel, @suscripcion)");
                MySqlCommand comando = new MySqlCommand(query, conn);
                comando.Parameters.Add(new MySqlParameter("@username", user));
                comando.Parameters.Add(new MySqlParameter("@correo", correo));
                comando.Parameters.Add(new MySqlParameter("@password", pass));
                comando.Parameters.Add(new MySqlParameter("@salt", salt));
                comando.Parameters.Add(new MySqlParameter("@nivel", nivel));
                comando.Parameters.Add(new MySqlParameter("@suscripcion", suscripcion));
                MySqlDataReader leer = comando.ExecuteReader();

                LoginRedirect();
            }
            else if (rbPago.Checked)
            {
                nivel = 1;
                suscripcion = 30;
                //el primer query es el que debe quedarse el segundo fue para validar la suscripcion de una forma mas rapida 
                // String query = ("INSERT INTO usuarios (user, correo, pass, salt, nivel, suscripcion, fechaInicioSus, fechaTerminoSus) VALUES (@username, @correo, sha2(CONCAT(@password, @salt), 256), @salt, @nivel, @suscripcion, NOW() + INTERVAL 5 HOUR, NOW() + INTERVAL 30 DAY + INTERVAL 5 HOUR)"); 
                String query = ("INSERT INTO usuarios (user, correo, pass, salt, nivel, suscripcion, fechaInicioSus, fechaTerminoSus) VALUES (@username, @correo, sha2(CONCAT(@password, @salt), 256), @salt, @nivel, @suscripcion, NOW() + INTERVAL 5 HOUR, NOW() + INTERVAL 5 HOUR + INTERVAL 2 MINUTE)");
                MySqlCommand comando = new MySqlCommand(query, conn);
                comando.Parameters.Add(new MySqlParameter("@username", user));
                comando.Parameters.Add(new MySqlParameter("@correo", correo));
                comando.Parameters.Add(new MySqlParameter("@password", pass));
                comando.Parameters.Add(new MySqlParameter("@salt", salt));
                comando.Parameters.Add(new MySqlParameter("@nivel", nivel));
                comando.Parameters.Add(new MySqlParameter("@suscripcion", suscripcion));
                MySqlDataReader leer = comando.ExecuteReader();

                LoginRedirect();
            }
            conn.Close();
        }

        public void LoginRedirect()
        {
            Response.Redirect("Login_Bootstrap.aspx", false);
            HttpContext.Current.ApplicationInstance.CompleteRequest();
        }
    }
}