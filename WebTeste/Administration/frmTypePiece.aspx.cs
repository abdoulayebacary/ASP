using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebTeste.Models;

namespace WebTeste.Administration
{
    public partial class frmTypePiece : System.Web.UI.Page
    {
        dbTransfertContext db = new dbTransfertContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            gvType.DataSource = db.TypePiece.ToList();
            gvType.DataBind();
        }

        protected void gvType_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtLib.Text = gvType.SelectedRow.Cells[2].Text;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            TypePiece p = new TypePiece();

            p.libelleTypePiece= txtLib.Text;

            db.TypePiece.Add(p);
            db.SaveChanges();

            Server.Transfer("~/Administration/frmTypePiece.aspx");
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int? id = int.Parse(gvType.SelectedRow.Cells[1].Text);

            TypePiece p = db.TypePiece.Find(id);

            p.libelleTypePiece = txtLib.Text;

            db.SaveChanges();

            Server.Transfer("~/Administration/frmTypePiece.aspx");
        }

        protected void btnDelet_Click(object sender, EventArgs e)
        {
            int? id = int.Parse(gvType.SelectedRow.Cells[1].Text);

            TypePiece p = db.TypePiece.Find(id);

            db.TypePiece.Remove(p);

            db.SaveChanges();

            Server.Transfer("~/Administration/frmTypePiece.aspx");
        }
    }
}