using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.EnterpriseServices;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tarifvakti.Yönetim
{
    public partial class Kurumsal : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbGoTrippConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BtnGuncelle.Enabled = false;
            }
        }
        string id;
        protected void BtnYukle_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand cmd = new SqlCommand("select * from tblKurumsal", baglanti);
            SqlDataReader oku = cmd.ExecuteReader();
            DataTable tablo = new DataTable();
            tablo.Load(oku);
            txtBaslik.Text = tablo.Rows[0]["Baslik"].ToString();
            txtOzet.Text = tablo.Rows[0]["Ozet"].ToString();
            txtDetay.Text = tablo.Rows[0]["Detay"].ToString(); 
            lblid.Text = tablo.Rows[0]["id"].ToString();
            baglanti.Close();
            BtnGuncelle.Enabled = true;
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand cmd = new SqlCommand("update tblKurumsal set Baslik=@Baslik,Ozet=@Ozet,Detay=@Detay where id=@id", baglanti);
            cmd.Parameters.AddWithValue("@Baslik", txtBaslik.Text.ToString());
            cmd.Parameters.AddWithValue("@Ozet", txtOzet.Text.ToString());
            cmd.Parameters.AddWithValue("@Detay", txtDetay.Text.ToString());
            cmd.Parameters.AddWithValue("@id", lblid.Text.ToString());
            cmd.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("Kurumsal.aspx");
        }
    }
}
