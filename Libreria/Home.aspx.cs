using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Libreria
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }
        protected void BindGrid()
        {

            string Libri = ConfigurationManager.ConnectionStrings["Epibook"].ConnectionString.ToString();
            using (SqlConnection con = new SqlConnection(Libri))
            {
                string query = "SELECT IDLibri, Autore, Titolo FROM Libri";

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

        protected void Bottone_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dettagli");
        }
    }
}