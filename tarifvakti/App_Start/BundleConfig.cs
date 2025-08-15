using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.UI;

namespace tarifvakti
{
    public class BundleConfig
    {
        // Paketleme hakk�nda daha fazla bilgi i�in l�tfen https://go.microsoft.com/fwlink/?LinkId=303951 adresini ziyaret edin.
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/WebFormsJs").Include(
                            "~/Scripts/WebForms/WebForms.js",
                            "~/Scripts/WebForms/WebUIValidation.js",
                            "~/Scripts/WebForms/MenuStandards.js",
                            "~/Scripts/WebForms/Focus.js",
                            "~/Scripts/WebForms/GridView.js",
                            "~/Scripts/WebForms/DetailsView.js",
                            "~/Scripts/WebForms/TreeView.js",
                            "~/Scripts/WebForms/WebParts.js"));

            // Bu dosyalar�n �al��mas� i�in s�ralama �ok �nemlidir; �zel ba��ml�l�klar vard�r
            bundles.Add(new ScriptBundle("~/bundles/MsAjaxJs").Include(
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjax.js",
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxApplicationServices.js",
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxTimer.js",
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxWebForms.js"));

            //Geli�tirme yapmak ve ��renmek i�in Modernizr'�n Geli�tirme s�r�m�n� kullan�n. �retim i�in haz�r
            // �retim i�in haz�r. https://modernizr.com adresinde derleme arac�n� kullanarak yaln�zca ihtiyac�n�z olan s�namalar� se�in.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                            "~/Scripts/modernizr-*"));
        }
    }
}
