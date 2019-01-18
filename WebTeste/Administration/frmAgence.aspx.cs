using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebTeste.Models;

namespace WebTeste.Administration
{
    public partial class frmAgence : System.Web.UI.Page
    {
        dbTransfertContext db = new dbTransfertContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            gvAgence.DataSource = db.Agence.ToList();
            gvAgence.DataBind();

            if (this.IsPostBack == false)
            {
                VilleCbb.DataSource = db.Ville.ToList();
                VilleCbb.DataBind();
            }
                      
        }

        protected void btnAjout_Click(object sender, EventArgs e)
        {
            Agence a = new Agence();
            a.libelleAgence = Libtxt.Text;
            a.quartier = Quartiertxt.Text;

            ////////////////////////////////////////////////////////
            // a.idVille= Int32.Parse(VilleCbb.SelectedValue.Substring(7, 1).ToString());
            ///////////////////////////////////////////////////////

            a.idVille = Int32.Parse(VilleCbb.SelectedValue);
            a.ville = db.Ville.Find(a.idVille);

            db.Agence.Add(a);
            db.SaveChanges();
            Server.Transfer("~/Administration/frmAgence.aspx");
        }

        protected void gvAgence_SelectedIndexChanged(object sender, EventArgs e)
        {
            Libtxt.Text = gvAgence.SelectedRow.Cells[2].Text;
            Quartiertxt.Text = gvAgence.SelectedRow.Cells[3].Text;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int? id = int.Parse(gvAgence.SelectedRow.Cells[1].Text);

            Agence a = db.Agence.Find(id);

            a.libelleAgence = Libtxt.Text;
            a.quartier = Quartiertxt.Text;


            a.idVille = Int32.Parse(VilleCbb.SelectedValue);
            a.ville = db.Ville.Find(a.idVille);

            db.SaveChanges();
            Server.Transfer("~/Administration/frmAgence.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int? id = int.Parse(gvAgence.SelectedRow.Cells[1].Text);

            Agence a = db.Agence.Find(id);

            db.Agence.Remove(a);

            db.SaveChanges();
            Server.Transfer("~/Administration/frmAgence.aspx");
        }
    }
}