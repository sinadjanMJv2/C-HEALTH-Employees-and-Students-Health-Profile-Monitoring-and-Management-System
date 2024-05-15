using System;
using System.Collections.Generic;

namespace SEPHMS.Entities
{
    public partial class Accountinginfo
    {
        public int AccountingInfoId { get; set; }
        public int PatientId { get; set; }
        public string? PayableStatus { get; set; }
        public decimal Balance { get; set; }
    }
}
