using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebTeste.Models;

namespace WebTeste.Administration
{
    public partial class frmRegion : System.Web.UI.Page
    {
        dbTransfertContext db = new dbTransfertContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            gvRegion.DataSource = db.Region.ToList();
            gvRegion.DataBind();
        }

        protected void gvRegion_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtLib.Text = gvRegion.SelectedRow.Cells[2].Text;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
           Region p = new Region();

            p.libelleRegion= txtLib.Text;

            db.Region.Add(p);
            db.SaveChanges();
            Server.Transfer("~/Administration/frmRegion.aspx");
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int? id = int.Parse(gvRegion.SelectedRow.Cells[1].Text);

            Region p = db.Region.Find(id);

            p.libelleRegion = txtLib.Text;

            db.SaveChanges();

            Server.Transfer("~/Administration/frmRegion.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int? id = int.Parse(gvRegion.SelectedRow.Cells[1].Text);

            Region p = db.Region.Find(id);

            db.Region.Remove(p);

            db.SaveChanges();

            Server.Transfer("~/Administration/frmRegion.aspx");
        }
    }
}