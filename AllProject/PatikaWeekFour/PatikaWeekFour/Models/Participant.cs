using System.Collections.Generic;

namespace PatikaWeekFour.Models
{
    public class Participant : UserBaseClass
    {
        public virtual List<Education> Education { get; set; }
    }
}
