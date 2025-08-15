using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace tarifvakti.Yönetim
{
    public partial class BlogEkle : System.Web.UI.Page
    {
        DateTime bugun = DateTime.Now;
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbGoTrippConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            lblTarih.Text=bugun.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand cmd = new SqlCommand("insert into tblBlog(Baslik,Detay,KategoriId,Resim,Ozet,Tarih) values(@Baslik,@Detay,@KategoriId,@Resim,@Ozet,@Tarih)", baglanti);
            cmd.Parameters.AddWithValue("@Baslik",txtBaslýk.Text.ToString());
            cmd.Parameters.AddWithValue("@Detay", txtDetay.Text.ToString());
            cmd.Parameters.AddWithValue("@KategoriId", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@Resim", lblResim.Text.ToString());
            cmd.Parameters.AddWithValue("@Ozet", txtÖzet.Text.ToString());
            cmd.Parameters.AddWithValue("@Tarih", bugun);
            cmd.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("BlogEkle.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    string ResimAd = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/images/blog/" + ResimAd));
                    lblResim.Text = ResimAd.ToString();

                }
                else
                {
                    lblResim.Text = "lütfen jpeg.jpg veya png uzantýlý resim seçin";
                }
            }
            else
                lblResim.Text = "lütfen bir resim seçin";
        }
    }
}
