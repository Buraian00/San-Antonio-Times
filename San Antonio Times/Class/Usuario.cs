using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace San_Antonio_Times.Class
{
    public class Usuario:Connexion
    {
        private MySqlConnection conex;
        public string nombreUsuario { set; get; }
        public int nivel { set; get; }
        public string correo { set; get; }
        public DateTime fechaInicioSus { set; get; }
        public DateTime fechaTerminoSus { set; get; }
        public DateTime fechaCreacion { set; get; }
        
        public Usuario()
        {
            this.conex = getConexion();
        }

        public string registrarUsuarioPremium(string user, string correo, string pass, string salt, int nivel)
        {
            string resultado;
            using (var connection = getConexion())
            {

                connection.Open();

                using (var comando = new MySqlCommand(
                //el primer query es el que debe quedarse el segundo fue para validar la suscripcion de una forma mas rapida 
                // String query = ("INSERT INTO usuarios (user, correo, pass, salt, nivel, suscripcion, fechaInicioSus, fechaTerminoSus) VALUES (@username, @correo, sha2(CONCAT(@password, @salt), 256), @salt, @nivel, @suscripcion, NOW() + INTERVAL 5 HOUR, NOW() + INTERVAL 30 DAY + INTERVAL 5 HOUR, NOW() + INTERVAL 5 HOUR)", connection); 
                    "INSERT INTO usuarios " +
                    "(nombreUsuario, correo, password, salt, nivel, fechaInicioSus, fechaTerminoSus, fechaCreacion) " +
                    "VALUES (@user, @correo, sha2(CONCAT(@password, @salt), 256), @salt, @nivel, NOW() + INTERVAL 5 HOUR, NOW() + INTERVAL 5 HOUR + INTERVAL 2 MINUTE, NOW() + INTERVAL 5 HOUR)", connection))
                    try
                    {
                        comando.Parameters.Add(new MySqlParameter("@user", user));
                        comando.Parameters.Add(new MySqlParameter("@correo", correo));
                        comando.Parameters.Add(new MySqlParameter("@password", pass));
                        comando.Parameters.Add(new MySqlParameter("@salt", salt));
                        comando.Parameters.Add(new MySqlParameter("@nivel", nivel));
                        comando.ExecuteNonQuery();
                        connection.Close();
                    }
                    catch (Exception ex)
                    {
                        resultado = ex.Message;
                        return resultado;
                    }
            }
            resultado = "Usuario ingresado correctamente";
            return resultado;
        }

        public string registrarUsuarioGratis(string user, string correo, string pass, string salt, int nivel)
        {
            string result;
            using (var connection = getConexion())
            {
                connection.Open();

                using (var comando = new MySqlCommand(
                    "INSERT INTO usuarios " +
                    "(nombreUsuario, correo, password, salt, nivel, fechaCreacion) " +
                    "VALUES (@user, @correo, sha2(CONCAT(@password, @salt), 256), @salt, @nivel, NOW() + INTERVAL 5 HOUR)", connection))
                    try
                    {
                        comando.Parameters.Add(new MySqlParameter("@user", user));
                        comando.Parameters.Add(new MySqlParameter("@correo", correo));
                        comando.Parameters.Add(new MySqlParameter("@password", pass));
                        comando.Parameters.Add(new MySqlParameter("@salt", salt));
                        comando.Parameters.Add(new MySqlParameter("@nivel", nivel));
                        comando.ExecuteNonQuery();
                        connection.Close();
                    }
                    catch (Exception ex)
                    {
                        result = ex.Message;
                        return result;
                    }
            }
            result = "Usuario ingresado correctamente";
            return result;
        }

        public string actualizarUsuario(string correo)
        {
            string result;
            using (var connection = getConexion())
            {
                connection.Open();

                using (var comando = new MySqlCommand(
                        "UPDATE usuarios SET nivel = 0 WHERE correo = @correo", connection))
                    try
                    {
                        comando.Parameters.Add(new MySqlParameter("@correo", correo));
                        comando.ExecuteReader();
                        connection.Close();
                    }
                    catch (Exception ex)
                    {
                        result = ex.Message;
                        return result;
                    }
            }
            result = "Se acacbo su suscripcion";
            return result;
        }

        public int validarUsuario(string correo, string password)
        {
            using (var connection = getConexion())
            {
                connection.Open();

                string query = "SELECT * FROM usuarios " +
                               "WHERE correo= @correo " +
                               "AND password= sha2(CONCAT(@password, (SELECT salt FROM usuarios WHERE correo = @correo)), 256)";

                using (MySqlCommand comando = new MySqlCommand(query, connection))
                {

                    comando.Parameters.AddWithValue("@correo", correo);
                    comando.Parameters.AddWithValue("@password", password);                 
                    using (var reader = comando.ExecuteReader())
                    {
                        if (reader.Read())
                            return 0;
                        else
                            return -1;
                    }                    
                }
            }           
        }

        public Usuario getUsuData(string correo)
        {
            
            Usuario usuDatos = new Usuario();
            using (var connection = getConexion())
            {
                string query = "SELECT * FROM usuarios WHERE correo=@correo";
                MySqlCommand comando = new MySqlCommand(query, connection);
                comando.Parameters.AddWithValue("@correo", correo);
                connection.Open();
                using (MySqlDataReader lector = comando.ExecuteReader())
                {
                    while (lector.Read())
                    {
                        usuDatos.nombreUsuario = lector["nombreUsuario"].ToString();
                        usuDatos.correo = lector["correo"].ToString();
                        usuDatos.nivel = Convert.ToInt16(lector["nivel"]);
                        usuDatos.fechaCreacion = Convert.ToDateTime(lector["fechaCreacion"]);
                        usuDatos.fechaInicioSus = Convert.ToDateTime(lector["fechaInicioSus"]);
                        usuDatos.fechaTerminoSus = Convert.ToDateTime(lector["fechaTerminoSus"]);
                    }
                    connection.Close();
                }
            }
            return usuDatos;
        }
    }
}
