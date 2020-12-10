using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace San_Antonio_Times
{
    public partial class Home_Open : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Cerrar_Sesion()
        {
            Response.Redirect("Home_Closed.aspx");
        }
    }
}