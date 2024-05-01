using System;
using System.Collections.Generic;

namespace SEPHMS.Entities
{
    public partial class Logbookdetail
    {
        public int LogbookdetailsId { get; set; }
        public int Logbookid { get; set; }
        public int MedicineId { get; set; }
        public int Quantity { get; set; }
    }
}
