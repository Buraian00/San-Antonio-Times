using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace San_Antonio_Times
{
    public partial class SessionTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            DateTime now = DateTime.Now;
            MySqlConnection conn = new MySqlConnection("server=MYSQL5034.site4now.net; database=db_a6ac79_login; Uid=a6ac79_login; pwd=odioesto90");
            conn.Open();
            const string ColumnOne = "ColumnOne";
            const string ColumnTwo = "ColumnTwo";
            const string ColumnThree = "ColumnThree";
            var mysqlCmd = new MySqlCommand("select nivel as '"+ColumnOne+"', fechaTerminoSus as '"+ColumnTwo+"', user as '"+ColumnThree+"'   from usuarios where correo= '" + Session["correo"] + "';", conn);
            var mysqlCmdReader = mysqlCmd.ExecuteReader();
            if (mysqlCmdReader.Read())
            {
                var resultOne = mysqlCmdReader.GetString(mysqlCmdReader.GetOrdinal(ColumnOne));
                var resultTwo = mysqlCmdReader.GetString(mysqlCmdReader.GetOrdinal(ColumnTwo));
                var resultThree = mysqlCmdReader.GetString(mysqlCmdReader.GetOrdinal(ColumnThree));
                Session["nivel"] = resultOne;
                Session["fecha"] = resultTwo;
                Session["usuario"] = resultThree;
            }

            if (Session["correo"] != null)
            {
                switch (Session["nivel"])
                {
                    case "1":
                        Response.Redirect("Premium.aspx");
                        break;

                    default:
                        lblSession.Text = "longiFree";
                        lblNivel.Text = Session["nivel"].ToString();
                        lblFecha.Text = Session["fecha"].ToString();
                        lblUser.Text = Session["usuario"].ToString();
                        break;

                }
                lblNivel.Text = Session["nivel"].ToString();
            }
        }
    }
}