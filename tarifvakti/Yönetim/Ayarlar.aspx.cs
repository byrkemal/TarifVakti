using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tarifvakti.Yönetim
{
    public partial class Ayarlar : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbGoTrippConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Enabled = false;
        }
        
        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand cmd = new SqlCommand("select * from tblAyarlar", baglanti);
            SqlDataReader oku = cmd.ExecuteReader();
            DataTable tablo = new DataTable();
            tablo.Load(oku);
            txtMail.Text = tablo.Rows[0]["Mail"].ToString();
            txtTelefon.Text = tablo.Rows[0]["Telefon"].ToString();
            txtAdres.Text = tablo.Rows[0]["Adres"].ToString();
            txtTwitter.Text = tablo.Rows[0]["Twitter"].ToString();
            txtYoutube.Text = tablo.Rows[0]["Youtube"].ToString();
            txtInstagram.Text = tablo.Rows[0]["Instagram"].ToString();            
            lblLogo.Text = tablo.Rows[0]["Logo"].ToString();
            txtDetay.Text = tablo.Rows[0]["SýteAciklama"].ToString();
            lblid.Text = tablo.Rows[0]["id"].ToString();
            baglanti.Close();
            Button1.Enabled=true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand cmd = new SqlCommand("update tblAyarlar set Mail=@Mail,Telefon=@Telefon,Adres=@Adres,Twitter=@Twitter,Youtube=@Youtube,Instagram=@Instagram,Logo=@Logo,SýteAciklama=@SýteAciklama where id=@id", baglanti);
            cmd.Parameters.AddWithValue("@Mail",txtMail.Text.ToString());
            cmd.Parameters.AddWithValue("@Telefon", txtTelefon.Text.ToString());
            cmd.Parameters.AddWithValue("@Adres", txtAdres.Text.ToString());
            cmd.Parameters.AddWithValue("@Twitter", txtTwitter.Text.ToString());
            cmd.Parameters.AddWithValue("@Youtube", txtYoutube.Text.ToString());
            cmd.Parameters.AddWithValue("@Instagram", txtInstagram.Text.ToString());
            cmd.Parameters.AddWithValue("@Logo", lblLogo.Text.ToString());
            cmd.Parameters.AddWithValue("@SýteAciklama", txtDetay.Text.ToString());
            cmd.Parameters.AddWithValue("@id", lblid.Text.ToString());
            cmd.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("Ayarlar.aspx");
        }
    }
}
