using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace San_Antonio_Times
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("ola ke ase");
        }

        protected void Set_Label()
        {
            //Almacena todas las variables necesarias durante la sesion
            String estado = "Sesion Cerrada";
            String usuario = "Nombre de Usuario";
            String nivel = "Nivel";
            String correo = "Correo";
            String fechaInicio = "Fecha de Inicio";
            String fechaTermino = "Fecha de Termino";

            //Set label
            lblEstado.Text = estado;
            lblUsuario.Text = usuario;
            lblNivel.Text = nivel;
            lblCorreo.Text = correo;
            lblFechaInicio.Text = fechaInicio;
            lblFechaTermino.Text = fechaTermino;
        }
    }
}