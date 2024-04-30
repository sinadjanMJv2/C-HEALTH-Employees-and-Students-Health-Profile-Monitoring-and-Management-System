using System;
using System.Collections.Generic;

namespace SEPHMS.Entities
{
    public partial class Logbook
    {
        public int Logbookid { get; set; }
        public int PatiendId { get; set; }
        public int MedicineId { get; set; }
        public int IllnessId { get; set; }
        public string DatetimePrescribe { get; set; }
        public int? Daystotake { get; set; }
        public int? Hmtotake { get; set; }
    }
}
