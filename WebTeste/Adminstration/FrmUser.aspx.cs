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
    public partial class FrmUser : System.Web.UI.Page
    {
        dbTransfertContext db = new dbTransfertContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            gvUser.DataSource = db.User.ToList();
            gvUser.DataBind();
            btnSupprimer.Enabled = false;
            BtnModifier.Enabled = false;
            btnValider.Enabled = true;
            
        }

        protected void btnValider_Click(object sender, EventArgs e)
        {
            User u = new User();
            u.userName = txtUsername.Text;
            u.password = txtPassword.Text;
            u.idAgence = int.Parse(LsIdAgence.SelectedValue.ToString());
            u.idProfile = int.Parse(lsProfile.SelectedValue.ToString());

           
            db.User.Add(u);
            db.SaveChanges();
            Server.Transfer("~/Adminstration/frmUser.aspx");

        }

        protected void gvUser_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtUsername.Text = gvUser.SelectedRow.Cells[2].Text;
            txtPassword.Text = gvUser.SelectedRow.Cells[3].Text;
            //txtProfile.Text = gvUser.SelectedRow.Cells[4].Text;
            //txtIdAgence.Text = gvUser.SelectedRow.Cells[5].Text;
            btnSupprimer.Enabled = true;
            btnValider.Enabled = false;
            BtnModifier.Enabled = true;
        }

        protected void BtnModifier_Click(object sender, EventArgs e)
        {
            int? id = int.Parse(gvUser.SelectedRow.Cells[1].Text);
            User u = db.User.Find(id);
            u.userName = txtUsername.Text;
            u.password = txtPassword.Text;
            u.idAgence = int.Parse(LsIdAgence.SelectedValue.ToString());
            u.idProfile = int.Parse(lsProfile.SelectedValue.ToString());

            db.SaveChanges();
            Server.Transfer("~/Adminstration/frmUser.aspx");

        }

        protected void btnSupprimer_Click(object sender, EventArgs e)
        {
            int? id = int.Parse(gvUser.SelectedRow.Cells[1].Text);
            User u = db.User.Find(id);
            db.User.Remove(u);
            db.SaveChanges();
            Server.Transfer("~/Adminstration/frmUser.aspx");
       
        }



        public DataTable GetTableUser()
        {
            DataTable table = new DataTable();
            table.Columns.Add("Username", typeof(string));
            table.Columns.Add("password", typeof(string));
          

            List<User> Liste = db.User.ToList();

            foreach (var item in Liste)
            {
                table.Rows.Add(
                                item.userName,
                                item.password
                                
                             );
            }

            return table;
        }

        protected void btnImprimmer_Click(object sender, EventArgs e)
        {
            CrystalDecisions.CrystalReports.Engine.ReportDocument rpth = new CrystalDecisions.CrystalReports.Engine.ReportDocument();
            rpth.Load(Server.MapPath("~/Report/rptUser.rpt"));
            rpth.SetDataSource(GetTableUser());
            rpth.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, String.Format("Liste_User_{0}", DateTime.Now));

        }

        //btn imprimer


    }
}