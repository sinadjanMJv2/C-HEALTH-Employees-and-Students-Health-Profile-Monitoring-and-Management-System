using System;
using System.Collections.Generic;

namespace SEPHMS.Entities
{
    public partial class Logbookdetail
    {
        public int LogbookdetailsId { get; set; }
        public int Llogbookid { get; set; }
        public int MedicineId { get; set; }
        public int Quatity { get; set; }
    }
}
