using CrystalDecisions.Shared;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebTeste.Models;
namespace WebTeste.PageReport
{
    public partial class FormPersonne : System.Web.UI.Page
    {
        dbTransfertContext db = new dbTransfertContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public DataTable GetTablePersonne()
        {
            DataTable table = new DataTable();
            table.Columns.Add("nom", typeof(string));
            table.Columns.Add("prenom", typeof(string));
            table.Columns.Add("telephone", typeof(string));
            table.Columns.Add("adresse", typeof(string));
            table.Columns.Add("email", typeof(string));
            table.Columns.Add("numPiece", typeof(string));

            List<WebTeste.Models.Personne> ListePersonne = db.Personne.ToList();

            foreach (var item in ListePersonne)
            {
                table.Rows.Add(
                 item.nom,
                 item.prenom,
                 item.telephone,
                  item.adresse,
                 item.email,
                 item.numPiece);
            }

            return table;
        }

        protected void btnImpression_Click(object sender, EventArgs e)
        {
            CrystalDecisions.CrystalReports.Engine.ReportDocument rpth = new CrystalDecisions.CrystalReports.Engine.ReportDocument();
            rpth.Load(Server.MapPath("~/Report/rptPersonne.rpt"));
            rpth.SetDataSource(GetTablePersonne());
            rpth.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Liste Personne");
        }
    }
}