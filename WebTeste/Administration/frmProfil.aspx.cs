using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebTeste.Models;

namespace WebTeste.Administration
{
    public partial class frmProfil : System.Web.UI.Page
    {
        dbTransfertContext db = new dbTransfertContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            gvProfil.DataSource = db.Profil.ToList();
            gvProfil.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Profil p = new Profil();

            p.libelleProfil = txtLib.Text;

            db.Profil.Add(p);
            db.SaveChanges();
            Server.Transfer("~/Administration/frmProfil.aspx");
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int? id = int.Parse(gvProfil.SelectedRow.Cells[1].Text);

            Profil p = db.Profil.Find(id);

            p.libelleProfil = txtLib.Text;

            db.SaveChanges();

            Server.Transfer("~/Administration/frmProfil.aspx");
        }

        protected void btnDelet_Click(object sender, EventArgs e)
        {
            int? id = int.Parse(gvProfil.SelectedRow.Cells[1].Text);

            Profil p = db.Profil.Find(id);

            db.Profil.Remove(p);

            db.SaveChanges();

            Server.Transfer("~/Administration/frmProfil.aspx");
        }

        protected void gvProfil_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtLib.Text=gvProfil.SelectedRow.Cells[2].Text;
        }
    }
}