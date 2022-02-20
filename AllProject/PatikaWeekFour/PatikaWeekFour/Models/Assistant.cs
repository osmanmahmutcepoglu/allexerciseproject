using System.Collections.Generic;

namespace PatikaWeekFour.Models
{
    public class Assistant : UserBaseClass
    {
        public virtual List<Education> Education { get; set; }
    }
}
