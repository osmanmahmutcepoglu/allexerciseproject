using System.Collections.Generic;

namespace PatikaWeekFour.Models
{
    public class Student : UserBaseClass
    {
        public virtual List<Education> Education { get; set; }
    }
}
