using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace WebTeste.Models
{
    public class Utilisateur
    {
        [Key]
        public int id { get; set; }

        [Required, MaxLength(80)]
        public string nom { get; set; }

        [Required, MaxLength(80)]
        public string prenom { get; set; }

        [Required, MaxLength(150)]
        public string adresse { get; set; }

        [Required, MaxLength(150)]
        public string Iduser { get; set; }

    }
}