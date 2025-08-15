using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tarifvakti.Y�netim
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
                lblResim.Text = "L�tfen �nce bir resim y�kleyin.";
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
                    lblResim.Text = "Veritaban�na kay�t eklenirken bir hata olu�tu: " + ex.Message;
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                // Dosya t�r�n� kontrol et
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" ||
                    FileUpload1.PostedFile.ContentType == "image/jpg" ||
                    FileUpload1.PostedFile.ContentType == "image/png")
                {
                    try
                    {
                        // Dosya ad�n� ve yolu belirle
                        string ResimAd = FileUpload1.FileName;
                        string ResimYolu = Server.MapPath("~/images/galeri/" + ResimAd);

                        // Dosyay� kaydet
                        FileUpload1.SaveAs(ResimYolu);

                        // Dosya yolunu label'e ata
                        lblResim.Text = ResimAd;
                    }
                    catch (Exception ex)
                    {
                        lblResim.Text = "Resim y�klenirken bir hata olu�tu: " + ex.Message;
                    }
                }
                else
                {
                    lblResim.Text = "L�tfen jpeg, jpg veya png uzant�l� bir resim se�in.";
                }
            }
            else
            {
                lblResim.Text = "L�tfen bir resim se�in.";
            }
        }
    }
    
}
