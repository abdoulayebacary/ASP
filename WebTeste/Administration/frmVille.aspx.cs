using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebTeste.Models;

namespace WebTeste.Administration
{
    public partial class frmVille : System.Web.UI.Page
    {
        dbTransfertContext db = new dbTransfertContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            gvVille.DataSource = db.Ville.ToList();
            gvVille.DataBind();

            if (this.IsPostBack == false)
            {
                departementCbb.DataSource = db.Departement.ToList();
                departementCbb.DataBind();
            }

            
        }

        protected void gvVille_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtLib.Text = gvVille.SelectedRow.Cells[2].Text;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Ville p = new Ville();

            p.idDepartement= Int32.Parse(departementCbb.SelectedValue);
            p.departement = db.Departement.Find(p.idDepartement);

            p.libelleVille = txtLib.Text;

            db.Ville.Add(p);
            db.SaveChanges();
            Server.Transfer("~/Administration/frmVille.aspx");
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int? id = int.Parse(gvVille.SelectedRow.Cells[1].Text);

            Ville p = db.Ville.Find(id);

            p.idDepartement = Int32.Parse(departementCbb.SelectedValue);
            p.departement = db.Departement.Find(p.idDepartement);

            p.libelleVille = txtLib.Text;

            db.SaveChanges();
            Server.Transfer("~/Administration/frmVille.aspx");
        }

        protected void btnDelet_Click(object sender, EventArgs e)
        {
            int? id = int.Parse(gvVille.SelectedRow.Cells[1].Text);

            Ville p = db.Ville.Find(id);

            db.Ville.Remove(p);

            db.SaveChanges();
            Server.Transfer("~/Administration/frmVille.aspx");
        }
    }
}