using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Libreria
{
    public partial class Dettagli : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Libri = ConfigurationManager.ConnectionStrings["Epibook"].ConnectionString.ToString();
            using (SqlConnection con = new SqlConnection(Libri))
            {
                string query = "SELECT Descrizione, Prezzo, Prenotato FROM Libri";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    con.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        GridView1.DataSource = reader;
                        GridView1.DataBind();
                    }
                }

            }
        }
    }
}