using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace WebTeste.Models
{
    public class dbTransfertContext : DbContext
    {
        public dbTransfertContext() : base("Conn")
        {

        }
        public DbSet<Profil> Profil { get; set; }
        public DbSet<TypePiece> TypePiece { get; set; }
        public DbSet<Personne> Personne{ get; set; }
        public DbSet<Agence> Agence { get; set; }
        public DbSet<User> User { get; set; }
        public DbSet<Utilisateur> utilisateurs { get; set; }

    }
}