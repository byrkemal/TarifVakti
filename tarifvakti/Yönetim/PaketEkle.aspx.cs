using System;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.UI.WebControls;

namespace tarifvakti.Yönetim
{
    public partial class PaketEkle : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbGoTrippConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    string ResimAd = FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath("~/images/" + ResimAd));
                    lblResim.Text = ResimAd;
                }
                else
                {
                    lblResim.Text = "Lütfen jpeg.jpg veya png uzantýlý resim seçin";
                }
            }
            else
            {
                lblResim.Text = "Lütfen bir resim seçin";
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
                    SqlConnection baglanti = new SqlConnection(conf_baglanti);
             
                    baglanti.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO tblTarifEkle (Adi, Alt_Aciklama,Yapilis_suresi , Resim, TarifYapilis) VALUES (@Adi, @Alt_Aciklama, @Yapilis_suresi, @Resim, @TarifYapilis)", baglanti);

                    cmd.Parameters.AddWithValue("@Adi", txtAd.Text.ToString());
                    cmd.Parameters.AddWithValue("@Alt_Aciklama", txtSure.Text.ToString());
                    cmd.Parameters.AddWithValue("@Yapilis_suresi", txtFiyat.Text.ToString());
                    cmd.Parameters.AddWithValue("@Resim", lblResim.Text.ToString());
                    cmd.Parameters.AddWithValue("@TarifYapilis", txtDetay.Text.ToString());
                    cmd.ExecuteNonQuery();
                    Response.Redirect("PaketEkle.aspx");
                    baglanti.Close();                                     
        }
    }
}
