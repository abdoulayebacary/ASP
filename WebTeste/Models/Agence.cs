using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace WebTeste.Models
{
    public class Agence
    {
        [Key]
        public int idAgence { get; set; }
        [MaxLength(30, ErrorMessage = "taille maximale 30"), Required(ErrorMessage = "champ obligatoire")]
        public String libelleAgence { get; set; }
        [MaxLength(30, ErrorMessage = "taille maximale 30"), Required(ErrorMessage = "champ obligatoire")]
        public String Quartier { get; set; }
        [MaxLength(30, ErrorMessage = "taille maximale 30"), Required(ErrorMessage = "champ obligatoire")]
        public String Ville { get; set; }
    }
}