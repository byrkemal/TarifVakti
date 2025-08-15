using System;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;

namespace tarifvakti
{
    public partial class GirisEkrani : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbGoTrippConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            using (SqlConnection baglanti = new SqlConnection(conf_baglanti))
            {
                baglanti.Open();
                using (SqlCommand komut = new SqlCommand("SELECT * FROM tblkullanicilar WHERE UserName=@UserName AND Sifre=@Sifre", baglanti))
                {
                    komut.Parameters.Add(new SqlParameter("@UserName", SqlDbType.NVarChar)).Value = txtUserName.Text.ToString();
                    komut.Parameters.Add(new SqlParameter("@Sifre", SqlDbType.NVarChar)).Value = txtSifre.Text.ToString();

                    using (SqlDataReader oku = komut.ExecuteReader())
                    {
                        if (oku.Read())
                        {
                            Session["Kullanici"] = oku["UserName"].ToString();
                            Response.Redirect("~/Yönetim/Default.aspx");
                        }
                        else
                        {
                            Label1.Text = "Kullanýcý adý veya þifre hatalý";
                        }
                    }
                }
            }
        }
    }
}
