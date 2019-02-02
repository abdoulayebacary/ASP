using CrystalDecisions.Shared;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebTeste.Models;

namespace WebTeste.Adminstration
{
    public partial class frmAgence : System.Web.UI.Page
    {
        dbTransfertContext db = new dbTransfertContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            /*Permet de charger de gridview a partir de la base de donnee  */
            gvAgence.DataSource = db.Agence.ToList();

            gvAgence.DataBind();

            btnSupprimer.Enabled = false;
            btnModifier.Enabled = false;
            btnAjouter.Enabled = true;
        }

        protected void btnAjouter_Click(object sender, EventArgs e)
        {
            Agence a = new Agence();
            a.libelleAgence = txtLibelle.Text;
            a.Quartier = txtQuartier.Text;
            a.Ville = txtVille.Text;

            db.Agence.Add(a);
            db.SaveChanges();
            Server.Transfer("~/Adminstration/frmAgence.aspx");

            
        }

        protected void gvAgence_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtLibelle.Text = gvAgence.SelectedRow.Cells[2].Text;
            txtQuartier.Text = gvAgence.SelectedRow.Cells[3].Text;
            txtVille.Text = gvAgence.SelectedRow.Cells[4].Text;

            btnSupprimer.Enabled = true;
            btnAjouter.Enabled = false;
            btnModifier.Enabled = true;
        }

        protected void btnModifier_Click(object sender, EventArgs e)
        {
            int? id = int.Parse(gvAgence.SelectedRow.Cells[1].Text);
            Agence a = db.Agence.Find(id);
            a.libelleAgence = txtLibelle.Text;
            a.Quartier = txtQuartier.Text;
            a.Ville = txtVille.Text;

            db.SaveChanges();
            Server.Transfer("~/Adminstration/frmAgence.aspx");


        }

        protected void btnSupprimer_Click(object sender, EventArgs e)
        {
            int? id = int.Parse(gvAgence.SelectedRow.Cells[1].Text);
            Agence a = db.Agence.Find(id);
            db.Agence.Remove(a);
            db.SaveChanges();
            Server.Transfer("~/Adminstration/frmAgence.aspx");
        }

        public DataTable GetTableAgence()
        {
            DataTable table = new DataTable();
            table.Columns.Add("libelleAgence", typeof(string));
            table.Columns.Add("Quartier", typeof(string));
            table.Columns.Add("Ville", typeof(string));

            List<Agence> Liste = db.Agence.ToList();

            foreach (var item in Liste)
            {
                table.Rows.Add(
                                item.libelleAgence,
                                item.Quartier,
                                item.Ville
                             );
            }

            return table;
        }

        protected void btnImprimmer_Click(object sender, EventArgs e)
        {
            CrystalDecisions.CrystalReports.Engine.ReportDocument rpth = new CrystalDecisions.CrystalReports.Engine.ReportDocument();
            rpth.Load(Server.MapPath("~/Report/rptAgence.rpt"));
            rpth.SetDataSource(GetTableAgence());
            rpth.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, String.Format("Liste_Agence_{0}", DateTime.Now));
        }
    }
}