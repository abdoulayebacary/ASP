using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebTeste.Models;

namespace WebTeste.Adminstration
{
    public partial class typePiece : System.Web.UI.Page
    {
        dbTransfertContext db = new dbTransfertContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            gvPiece.DataSource = db.TypePiece.ToList();
            gvPiece.DataBind();
        }

        protected void btnValider_Click(object sender, EventArgs e)
        {
            TypePiece p = new TypePiece();
            p.libelleTypePiece = txtlibelle.Text;

            db.TypePiece.Add(p);

            db.SaveChanges();
            Server.Transfer("~/Adminstration/typePiece.aspx");


        }

        protected void btnModifer_Click(object sender, EventArgs e)
        {
            int? id = int.Parse(gvPiece.SelectedRow.Cells[1].Text);
            TypePiece p = db.TypePiece.Find(id);

            p.libelleTypePiece = txtlibelle.Text;

            db.SaveChanges();
            Server.Transfer("~/Adminstration/typePiece.aspx");

        }

        protected void BtnSupprimer_Click(object sender, EventArgs e)
        {
            int? id = int.Parse(gvPiece.SelectedRow.Cells[1].Text);
            TypePiece p = db.TypePiece.Find(id);

            db.TypePiece.Remove(p);
            db.SaveChanges();
            Server.Transfer("~/Adminstration/typePiece.aspx");
        }

        protected void gvPiece_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtlibelle.Text = gvPiece.SelectedRow.Cells[2].Text;


        }
    }
}