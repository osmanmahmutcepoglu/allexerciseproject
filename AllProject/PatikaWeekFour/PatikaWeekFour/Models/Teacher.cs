using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PatikaWeekFour.Models
{
    public class Teacher : UserBaseClass
    {
        public virtual List<Education> Education { get; set; }
    }
}
