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
    public partial class frmPersonne : System.Web.UI.Page
    {
        dbTransfertContext db = new dbTransfertContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            gvPersonne.DataSource = db.Personne.ToList();
            gvPersonne.DataBind();
        }

        protected void btnAjouter_Click(object sender, EventArgs e)
        {
            Personne p = new Personne();
            p.nom = txtNom.Text;
            p.prenom = txtPrenom.Text;
            p.adresse = txtAdresse.Text;
            p.idPiece = int.Parse(lsPieces.SelectedValue.ToString());
            p.email = txtEmail.Text;
            p.telephone = txtTelephone.Text;
            p.numPiece = txtNumpice.Text;

            db.Personne.Add(p);
            db.SaveChanges();
            Server.Transfer("~/Adminstration/frmPersonne.aspx");

        }

       

        protected void btnSupprimer_Click(object sender, EventArgs e)
        {
            int? id = int.Parse(gvPersonne.SelectedRow.Cells[1].Text);
            Personne p = db.Personne.Find(id);

            db.Personne.Remove(p);
            db.SaveChanges();
            Server.Transfer("~/Adminstration/frmPersonne.aspx");


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int? id = int.Parse(gvPersonne.SelectedRow.Cells[1].Text);
            Personne p = db.Personne.Find(id);
            p.nom = txtNom.Text;
            p.prenom = txtPrenom.Text;
            p.adresse = txtAdresse.Text;
            p.idPiece = int.Parse(lsPieces.SelectedValue.ToString());
            p.email = txtEmail.Text;
            p.telephone = txtTelephone.Text;

            db.SaveChanges();
            Server.Transfer("~/Adminstration/frmPersonne.aspx");

        }

        protected void gvPersonne_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtTelephone.Text = gvPersonne.SelectedRow.Cells[4].Text;
            txtAdresse.Text = gvPersonne.SelectedRow.Cells[5].Text;
            txtNumpice.Text = gvPersonne.SelectedRow.Cells[7].Text;
            txtEmail.Text = gvPersonne.SelectedRow.Cells[6].Text;
           
            txtNom.Text = gvPersonne.SelectedRow.Cells[2].Text;
            txtPrenom.Text = gvPersonne.SelectedRow.Cells[3].Text;

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

            List<Personne> ListePersonne = db.Personne.ToList();

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

        protected void btnImprimmer_Click(object sender, EventArgs e)
        {
            CrystalDecisions.CrystalReports.Engine.ReportDocument rpth = new CrystalDecisions.CrystalReports.Engine.ReportDocument();
            rpth.Load(Server.MapPath("~/Report/rptPersonne.rpt"));
            rpth.SetDataSource(GetTablePersonne());
            rpth.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, String.Format("Liste_Personne_{0}", DateTime.Now));
        }

        protected void btnActuliser_Click(object sender, EventArgs e)
        {
            // cause validation :: false pour eviter request Validation
            btnAjouter.Enabled = true;
            btnModifier.Enabled = false;
            btnSupprimer.Enabled = false;

            txtAdresse.Text = "";
            txtEmail.Text = "";
            txtNom.Text = "";
            txtNumpice.Text = "";
            txtPrenom.Text = "";
            txtTelephone.Text = "";
              
        }

        
    }
}