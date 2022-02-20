using Microsoft.EntityFrameworkCore;
using PatikaWeekFour.Models;

namespace PatikaWeekFour
{
    public class ContextDb : DbContext
    {
        public ContextDb(DbContextOptions<ContextDb> options) : base(options) { }
        public DbSet<Teacher> Teachers { get; set; }
        public DbSet<Education> Educations { get; set; }
        public DbSet<Assistant> Assistant { get; set; }
        public DbSet<EducationAttendance> EducationAttendance { get; set; }
        public DbSet<EducationWeek> EducationWeek { get; set; }
        public DbSet<Participant> Participant { get; set; }
        public DbSet<Student> Student { get; set; }
        public DbSet<StudentEducationSuccessStatus> StudentEducationSuccessStatus { get; set; }
    }
}
