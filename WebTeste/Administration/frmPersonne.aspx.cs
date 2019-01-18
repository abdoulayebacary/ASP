using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebTeste.Models;

namespace WebTeste.Administration
{
    public partial class frmPersonne : System.Web.UI.Page
    {
        dbTransfertContext db = new dbTransfertContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            gvPersonne.DataSource = db.Personne.ToList();
            gvPersonne.DataBind();
            if (this.IsPostBack == false)
            {
                Typecbb.DataSource = db.TypePiece.ToList();
                Typecbb.DataBind();
            }

        }

        protected void gvPersonne_SelectedIndexChanged(object sender, EventArgs e)
        {
            Nomtxt.Text = gvPersonne.SelectedRow.Cells[2].Text;
            Prenomtxt.Text = gvPersonne.SelectedRow.Cells[3].Text;
            Teltxt.Text= gvPersonne.SelectedRow.Cells[4].Text;
            Adressetxt.Text= gvPersonne.SelectedRow.Cells[5].Text;
            Emailtxt.Text= gvPersonne.SelectedRow.Cells[6].Text;

            Numpiecetxt.Text= gvPersonne.SelectedRow.Cells[7].Text;
        }

        protected void btnAjout_Click(object sender, EventArgs e)
        {

            if (this.IsValid)
            {
                Personne p = new Personne();
                p.nom = Nomtxt.Text;
                p.prenom = Prenomtxt.Text;
                p.telephone = Teltxt.Text;
                p.adresse = Adressetxt.Text;
                p.email = Emailtxt.Text;

                //var type = db.TypePiece.Where(x => x.libelleTypePiece == Typecbb.SelectedValue).ToList();

                //p.typePiece = type.Last();
                p.idPiece = Int32.Parse(Typecbb.SelectedValue);
                p.typePiece = db.TypePiece.Find(p.idPiece);

                p.numPiece = Numpiecetxt.Text;

                db.Personne.Add(p);
                db.SaveChanges();
                Server.Transfer("~/Administration/frmPersonne.aspx");


            }
       
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int? id = int.Parse(gvPersonne.SelectedRow.Cells[1].Text);
            Personne p = db.Personne.Find(id);

            p.nom = Nomtxt.Text;
            p.prenom = Prenomtxt.Text;
            p.telephone = Teltxt.Text;
            p.adresse = Adressetxt.Text;
            p.email = Emailtxt.Text;
            ////////////////////////
            p.numPiece = Numpiecetxt.Text;

            //var type = db.TypePiece.Where(x => x.libelleTypePiece == Typecbb.SelectedValue).ToList();

            //p.typePiece = type.Last();
            //p.idPiece = p.typePiece.id;

            p.idPiece = Int32.Parse(Typecbb.SelectedValue);
            p.typePiece = db.TypePiece.Find(p.idPiece);

            db.SaveChanges();
            Server.Transfer("~/Administration/frmPersonne.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int? id = int.Parse(gvPersonne.SelectedRow.Cells[1].Text);
            Personne p = db.Personne.Find(id);

            db.Personne.Remove(p);
            db.SaveChanges();
            Server.Transfer("~/Administration/frmPersonne.aspx");
        }
    }
}