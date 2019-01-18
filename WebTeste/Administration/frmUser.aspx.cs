using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebTeste.Models;

namespace WebTeste.Administration
{
    public partial class frmUser : System.Web.UI.Page
    {
        dbTransfertContext db = new dbTransfertContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            gvUser.DataSource = db.User.ToList();
            gvUser.DataBind();
        }

        protected void gvUser_SelectedIndexChanged(object sender, EventArgs e)
        {
            Logintxt.Text = gvUser.SelectedRow.Cells[2].Text;
            pwdTxt.Text = gvUser.SelectedRow.Cells[3].Text;
        }

        protected void btnAjout_Click(object sender, EventArgs e)
        {
            User u = new User();
            u.userName = Logintxt.Text;
            u.password = pwdTxt.Text;

            db.User.Add(u);
            db.SaveChanges();
            Server.Transfer("~/Administration/frmUser.aspx");
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int? id = int.Parse(gvUser.SelectedRow.Cells[1].Text);

            User u = db.User.Find(id);

            u.userName = Logintxt.Text;
            u.password = pwdTxt.Text;

            db.SaveChanges();
            Server.Transfer("~/Administration/frmUser.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int? id = int.Parse(gvUser.SelectedRow.Cells[1].Text);

            User u = db.User.Find(id);

            db.User.Remove(u);

            db.SaveChanges();
            Server.Transfer("~/Administration/frmUser.aspx");
        }
    }
}