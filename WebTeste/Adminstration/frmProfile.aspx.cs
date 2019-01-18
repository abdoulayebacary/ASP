﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebTeste.Models;
namespace WebTeste.Adminstration
{
    public partial class frmProfile : System.Web.UI.Page
    {
        dbTransfertContext db = new dbTransfertContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            gvProfil.DataSource = db.Profil.ToList();
            gvProfil.DataBind();
        }

        protected void btnValider_Click(object sender, EventArgs e)
        {
            Profil p = new Profil();
            p.libelleProfil = txtLibelle.Text;
            p.codeProfile = txtCaode.Text;

            db.Profil.Add(p);
            db.SaveChanges();

            Server.Transfer("~/Adminstration/frmProfile.aspx");
        }

        protected void btnModifier_Click(object sender, EventArgs e)
        {
            int? id = int.Parse(gvProfil.SelectedRow.Cells[1].Text);
            Profil p = db.Profil.Find(id);
            p.libelleProfil = txtLibelle.Text;
            p.codeProfile = txtCaode.Text;

            db.SaveChanges();
            Server.Transfer("~/Adminstration/frmProfile.aspx");

        }

        protected void gvProfil_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtCaode.Text = gvProfil.SelectedRow.Cells[3].Text;
            txtLibelle.Text = gvProfil.SelectedRow.Cells[2].Text;


        }

        protected void btnSupprimer_Click(object sender, EventArgs e)
        {
            int? id = int.Parse(gvProfil.SelectedRow.Cells[1].Text);
            Profil p = db.Profil.Find(id);
            db.Profil.Remove(p);

            db.SaveChanges();
            Server.Transfer("~/Adminstration/frmProfile.aspx");


        }
    }
}