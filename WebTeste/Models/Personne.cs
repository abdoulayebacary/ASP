using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace WebTeste.Models
{
    public class Personne
    {
        [Key]
        public int id { get; set; }
        [MaxLength(80, ErrorMessage = "taille maximale 80"), Required(ErrorMessage = "champ obligatoire")]
        public string nom { get; set; }
        [MaxLength(80, ErrorMessage = "taille maximale 80"), Required(ErrorMessage = "champ obligatoire")]
        public string prenom { get; set; }
        [DataType(DataType.PhoneNumber)]
        [MaxLength(20, ErrorMessage = "taille maximale 20"), Required(ErrorMessage = "champ obligatoire")]
        public string telephone { get; set; }
        [MaxLength(150, ErrorMessage = "taille maximale 150")]
        public string adresse { get; set; }
        [DataType(DataType.EmailAddress)]
        [MaxLength(80, ErrorMessage = "taille maximale 80"), Required(ErrorMessage = "champ obligatoire")]
        public string email { get; set; }
        [MaxLength(80, ErrorMessage = "taille maximale 80"), Required(ErrorMessage = "champ obligatoire")]
        public string numPiece { get; set; }
        public int idPiece { get; set; }
        [ForeignKey("idPiece")]
        public virtual TypePiece typePiece { get; set; }




    }
}