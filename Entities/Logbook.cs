using System;
using System.Collections.Generic;

namespace SEPHMS.Entities
{
    public partial class Logbook
    {
        public int Logbookid { get; set; }
        public int PatientId { get; set; }
        public int MedicineId { get; set; }
        public int IllnessId { get; set; }
        public string DatePrescribe { get; set; }
        public string TimePrescribe { get; set; }
    }
}
