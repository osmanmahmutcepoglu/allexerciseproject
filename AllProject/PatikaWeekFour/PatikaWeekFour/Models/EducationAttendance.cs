using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PatikaWeekFour.Models
{
    public class EducationAttendance
    {
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public int EducationId { get; set; }
        public int StudentId { get; set; }
        public virtual EducationWeek EducationWeek { get; set; }

        public virtual Student Student { get; set; }
    }
}
