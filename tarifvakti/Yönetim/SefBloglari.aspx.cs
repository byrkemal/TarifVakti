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
    public partial class SefBloglari : System.Web.UI.Page
    {
        DateTime bugun = DateTime.Now;
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbGoTrippConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblTarih.Text = bugun.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand cmd = new SqlCommand("insert into tblSefBloglari(Baslik,Kategori,Tarih,BlogDetay) values(@Baslik,@Kategori,@Tarih,@BlogDetay)", baglanti);
            cmd.Parameters.AddWithValue("@Baslik", txtBaslik.Text.ToString());
            cmd.Parameters.AddWithValue("@Kategori", txtKategori.Text.ToString());
            cmd.Parameters.AddWithValue("@Tarih", bugun);
            cmd.Parameters.AddWithValue("@BlogDetay", txtDetay.Text.ToString());            
            cmd.ExecuteNonQuery();
            Response.Redirect("SefBloglari.aspx");
            baglanti.Close();
        }
    }
}
