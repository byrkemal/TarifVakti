using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tarifvakti.Yönetim
{
    public partial class GaleriKategori : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbGoTrippConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand cmd = new SqlCommand("insert into tblGaleriKategori(Adi) values(@Adi)", baglanti);
            cmd.Parameters.AddWithValue("@Adi", txtKategori.Text.ToString());
            cmd.ExecuteNonQuery();
            Response.Redirect("GaleriKategori.aspx");
            baglanti.Close();
        }
    }
}
