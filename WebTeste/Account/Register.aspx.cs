using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using WebTeste.Models;

namespace WebTeste.Account
{
    public partial class Register : Page
    {
        dbTransfertContext db = new dbTransfertContext();
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = Identifiant.Text, Email = Email.Text };
            IdentityResult result = manager.Create(user, Password.Text);
            if (result.Succeeded)
            {
                // Pour plus d'informations sur l'activation de la confirmation de compte et de la réinitialisation de mot de passe, visitez https://go.microsoft.com/fwlink/?LinkID=320771
                //string code = manager.GenerateEmailConfirmationToken(user.Id);
                //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                //manager.SendEmail(user.Id, "Confirmez votre compte", "Confirmez votre compte en cliquant <a href=\"" + callbackUrl + "\">ici</a>.");
                Utilisateur u = new Utilisateur();
                u.nom = txtNom.Text;
                u.prenom = txtAdresse.Text;
                u.adresse = txtAdresse.Text;
                u.Iduser = user.Id;
                db.utilisateurs.Add(u);
                db.SaveChanges();
                signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            else
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }

        }
    }
}