using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PatikaWeekFour.Models
{
    public class EducationWeek
    {
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public int EducationId { get; set; }
        public int EducationWeekNumber { get; set; }
        public virtual Education Education { get; set; }
    }
}
