using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace WebTeste.Models
{
    public class User
    {
        [Key]
        public int idUser { get; set; }

        [MaxLength(80, ErrorMessage = "taille maximale 80"), Required(ErrorMessage = "champ obligatoire")]
        public string userName { get; set; }

        [DataType(DataType.Password)]
        [MaxLength(20, ErrorMessage = "taille maximale 20"), Required(ErrorMessage = "champ obligatoire")]
        public string password { get; set; }

        [ForeignKey("profil")]
        public int idProfile { get; set; }

        public virtual Profil profil { get; set; }

        [ForeignKey("agence")]
        public int idAgence { get; set; }

        public virtual Agence agence { get; set; }
    }
}