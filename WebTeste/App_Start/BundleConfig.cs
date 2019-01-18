using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.UI;

namespace WebTeste
{
    public class BundleConfig
    {
        // Pour plus d'informations sur le regroupement (Bundling), consultez http://go.microsoft.com/fwlink/?LinkID=303951
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/WebFormsJs").Include(
                            "~/plugins/jQuery/jquery-2.2.3.min.js",
                            "~/bootstrap/js/bootstrap.min.js",
                            "~/plugins/fastclick/fastclick.js",
                            "~/dist/js/app.min.js",
                            "~/plugins/sparkline/jquery.sparkline.min.js",
                            "~/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js",
                            "~/plugins/jvectormap/jquery-jvectormap-world-mill-en.js",
                            "~/plugins/slimScroll/jquery.slimscroll.min.js",
                            "~/plugins/chartjs/Chart.min.js",
                            "~/dist/js/pages/dashboard2.js",
                            "~/dist/js/demo.js"
                            ));

            // L'ordre est très important pour que ces fichiers fonctionnent, car ils ont des dépendances explicites
            bundles.Add(new ScriptBundle("~/bundles/MsAjaxJs").Include(
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjax.js",
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxApplicationServices.js",
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxTimer.js",
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxWebForms.js"));

            // La version Development de Modernizr vous permet de développer et d’apprendre. Ensuite, lorsque vous êtes
            // prêt pour une implémentation dans un environnement de production, utilisez l’outil de génération que vous trouverez à l’adresse http://modernizr.com pour sélectionner uniquement les tests dont vous avez besoin
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                            "~/Scripts/modernizr-*"));

            ScriptManager.ScriptResourceMapping.AddDefinition(
                "respond",
                new ScriptResourceDefinition
                {
                    Path = "~/Scripts/respond.min.js",
                    DebugPath = "~/Scripts/respond.js",
                });
        }
    }
}