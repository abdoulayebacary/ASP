using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace WebTeste.Models
{
    //[Table("profil")]
    public class Profil
    {
       [Key]
        public int id { get; set; }
        [MaxLength(30, ErrorMessage = "taille maximale 30"), Required(ErrorMessage = "champ obligatoire")]
        public string codeProfile { get; set; }
        [MaxLength(30, ErrorMessage ="taille maximale 30"),Required(ErrorMessage ="champ obligatoire")]
        public string libelleProfil { get; set; }


    }
}