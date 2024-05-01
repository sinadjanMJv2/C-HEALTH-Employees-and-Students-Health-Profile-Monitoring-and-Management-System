using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SEPHMS.ViewModel
{
    public class LogbookViewModel
    {

        public int LogbookId { get; set; }
        public string DatetimePrescribe { get; set; }
        public int? Daystotake { get; set; }
        public int?  Hmtotake { get; set; }

        public int PatientId { get; set; }
        public string Fullname { get; set; }
        public string Firstname { get; set; }
        public string Lastname { get; set; }
        public int Age { get; set; }



        public int IllnessId { get; set; }
        public string Illnessname { get; set; }



        public int DepartmentId { get; set; }
        public string DepartmentName { get; set; }


        public int CourseStrandYearId { get; set; }
        public string CourseStrandYearName { get; set; }


    }
}