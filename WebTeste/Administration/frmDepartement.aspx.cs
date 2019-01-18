using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebTeste.Models;

namespace WebTeste.Administration
{
    public partial class frmDepartement : System.Web.UI.Page
    {
        dbTransfertContext db = new dbTransfertContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            gvDepartement.DataSource = db.Departement.ToList();
            gvDepartement.DataBind();

            if (this.IsPostBack == false)
            {
                RegionCBB.DataSource = db.Region.ToList();
                RegionCBB.DataBind();
            }

           
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Departement p = new Departement();


            p.idRegion = Int32.Parse(RegionCBB.SelectedValue);
            p.region = db.Region.Find(p.idRegion);

            p.libelleDepartement = txtLib.Text;

            db.Departement.Add(p);
            db.SaveChanges();

            Server.Transfer("~/Administration/frmDepartement.aspx");
        }

        protected void gvDepartement_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtLib.Text = gvDepartement.SelectedRow.Cells[2].Text;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int? id = int.Parse(gvDepartement.SelectedRow.Cells[1].Text);

            Departement p = db.Departement.Find(id);
            p.idRegion = Int32.Parse(RegionCBB.SelectedValue);
            p.region = db.Region.Find(p.idRegion);
            p.libelleDepartement = txtLib.Text;

            p.libelleDepartement = txtLib.Text;

            db.SaveChanges();

            Server.Transfer("~/Administration/frmDepartement.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int? id = int.Parse(gvDepartement.SelectedRow.Cells[1].Text);

            Departement p = db.Departement.Find(id);

            db.Departement.Remove(p);

            db.SaveChanges();

            Server.Transfer("~/Administration/frmDepartement.aspx");
        }
    }
}