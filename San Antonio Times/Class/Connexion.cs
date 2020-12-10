using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace San_Antonio_Times.Class
{
    public class Connexion
    {
        private MySqlConnection conexion;

        public Connexion()
        {
            string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["conexion1"].ConnectionString;
            this.conexion = new MySqlConnection(cadenaConexion);
        }

        public void conectar()
        {
            this.conexion.Open();
        }

        public void cerrar()
        {
            this.conexion.Close();
        }

        public MySqlConnection getConexion()
        {
            return this.conexion;
        }
    }
}
