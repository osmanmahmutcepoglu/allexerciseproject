using System;
using System.ComponentModel.DataAnnotations;

namespace UnluCo.Bootcamp.Week1.Models
{
    public class Film
    {
        [Required]
        public int FilmId { get; set; }
        [Required]
        public string FilmName { get; set; }
        [Required]
        public string FilmGenre { get; set; }
        [Required]
        public DateTime FilmReleaseDate { get; set; }

    }
}
