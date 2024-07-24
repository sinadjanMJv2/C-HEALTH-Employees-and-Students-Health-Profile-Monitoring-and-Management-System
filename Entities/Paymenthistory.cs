using System;
using System.Collections.Generic;

namespace SEPHMS.Entities
{
    public partial class Paymenthistory
    {
        public int Paymenthistid { get; set; }
        public int Accinfoid { get; set; }
        public decimal Pay { get; set; }
        public string Dateandtime { get; set; }
        public decimal Balance { get; set; }
    }
}
