using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PatikaWeekFour.Models
{
    public class Education
    {
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public string EducationName { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }

        public virtual List<Teacher> Teacher { get; set; }
        public virtual List<Assistant> Assistant { get; set; }
        public virtual List<Participant> Participant { get; set; }
        public virtual List<Student> Student { get; set; }
    }
}
