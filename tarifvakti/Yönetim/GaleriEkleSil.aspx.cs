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
    public partial class GaleriEkleSil : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbGoTrippConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(lblResim.Text))
            {
                lblResim.Text = "Lütfen önce bir resim yükleyin.";
                return;
            }

            using (SqlConnection baglanti = new SqlConnection(conf_baglanti))
            {
                try
                {
                    baglanti.Open();
                    string query = "INSERT INTO tblGalerii (Baslik, Resim) VALUES (@Baslik, @Resim)";
                    using (SqlCommand cmd = new SqlCommand(query, baglanti))
                    {
                        cmd.Parameters.AddWithValue("@Baslik", txtResimAdi.Text);
                        cmd.Parameters.AddWithValue("@Resim", lblResim.Text);
                        cmd.ExecuteNonQuery();
                        Response.Redirect("GaleriEkleSil.aspx");
                    }
                }
                catch (Exception ex)
                {
                    lblResim.Text = "Veritabanýna kayýt eklenirken bir hata oluþtu: " + ex.Message;
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                // Dosya türünü kontrol et
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" ||
                    FileUpload1.PostedFile.ContentType == "image/jpg" ||
                    FileUpload1.PostedFile.ContentType == "image/png")
                {
                    try
                    {
                        // Dosya adýný ve yolu belirle
                        string ResimAd = FileUpload1.FileName;
                        string ResimYolu = Server.MapPath("~/images/galeri/" + ResimAd);

                        // Dosyayý kaydet
                        FileUpload1.SaveAs(ResimYolu);

                        // Dosya yolunu label'e ata
                        lblResim.Text = ResimAd;
                    }
                    catch (Exception ex)
                    {
                        lblResim.Text = "Resim yüklenirken bir hata oluþtu: " + ex.Message;
                    }
                }
                else
                {
                    lblResim.Text = "Lütfen jpeg, jpg veya png uzantýlý bir resim seçin.";
                }
            }
            else
            {
                lblResim.Text = "Lütfen bir resim seçin.";
            }
        }
    }
    
}
