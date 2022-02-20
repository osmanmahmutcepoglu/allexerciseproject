using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using UnluCo.Bootcamp.Week1.Models;

namespace UnluCo.Bootcamp.Week1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class FilmController : ControllerBase
    {
        private List<Film> filmList = new List<Film>() {
        new Film{
            FilmId=1,
            FilmName="Gerçek Kahraman",
            FilmGenre="Aksiyon",
            FilmReleaseDate= new DateTime(2021,01,01)
        },
        new Film{
            FilmId=2,
            FilmName="Otel Transilvanya: Transformanya",
            FilmGenre="Aile",
            FilmReleaseDate= new DateTime(2022,01,01)
        },
        new Film{
            FilmId=3,
            FilmName="Kimseye Söyleme",
            FilmGenre="Gerilim",
            FilmReleaseDate= new DateTime(2020,01,01)
        },

        };

        [HttpGet("/List/{colon}/{orderby}")]
        public IActionResult GetFilmList(string colon = "FilmName", string orderby = "asc")
        { //colon kısmına sıralatmak istediğimiz alanın adını giriyoruz,
          //orderby kısmınada büyükten küçüğemi küçükten büyüğemi sıralatağımızı giriyoruz.
          // Sadece Film adına göre ve Film türüne göre sıralayabiliyorsunuz.
            var film = new List<Film>();
            if (colon == "FilmName" && orderby == "asc")
            {
                film = filmList.OrderBy(x=>x.FilmName).ToList();
            }
            else if (colon == "FilmName" && orderby == "desc")
            {
                film = filmList.OrderByDescending(x => x.FilmName).ToList();
            }
            else if (colon == "FilmGenre" && orderby == "asc")
            {
                film = filmList.OrderBy(x => x.FilmGenre).ToList();
            }
            else if (colon == "FilmGenre" && orderby == "desc")
            {
                film = filmList.OrderByDescending(x => x.FilmGenre).ToList();
            }
            if (film.Count == 0)
                return NotFound("List is Empty!!");

            return Ok(film);
        }

        [HttpPost("addnewfilm")]
        public IActionResult AddFilm([FromForm] Film newFilm)
        {
            var film = filmList.SingleOrDefault(x => x.FilmId == newFilm.FilmId);
            if (film != null)
                return BadRequest();

            filmList.Add(newFilm);
            return StatusCode(201);
        }

        [HttpPut("updatefilm/{id}")]
        public IActionResult UpdateFilm(int id, [FromForm] Film updateFilm)
        {
            var film = filmList.SingleOrDefault(x => x.FilmId == id);
            if (film == null)
                return BadRequest();
            film.FilmName = updateFilm.FilmName != default ? updateFilm.FilmName : film.FilmName;
            film.FilmGenre = updateFilm.FilmGenre != default ? updateFilm.FilmGenre : film.FilmGenre;
            film.FilmReleaseDate = updateFilm.FilmReleaseDate != default ? updateFilm.FilmReleaseDate : film.FilmReleaseDate;

            return Ok("İşlem Başarılı!!");
        }
        [HttpPatch("updateFilmDate/{id}")]
        public IActionResult UpdateFilmDate(int id, [FromBody] Film updateFilmDate)
        {
            var film = filmList.SingleOrDefault(x => x.FilmId == id);
            if (film == null)
                return BadRequest();
            film.FilmReleaseDate = updateFilmDate.FilmReleaseDate != default ? updateFilmDate.FilmReleaseDate : film.FilmReleaseDate;
            return Ok("Tarih Güncellendi!!");

        }
        [HttpDelete("deleteFilm/{id}")]
        public IActionResult DeleteFilm(int id)
        {
            var film = filmList.SingleOrDefault(x => x.FilmId == id);
            if (film == null)
                return BadRequest();
            filmList.Remove(film);
            return Ok("Film Başarıyla Silindi !!!");
        }
        [HttpGet("GetFilm/{id}")]
        public IActionResult GetFilm(int id)
        {
            var film = filmList.SingleOrDefault(x => x.FilmId == id);
            if (film == null)
                return BadRequest();
            return Ok(film);

        }




    }
}
