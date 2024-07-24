using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SEPHMS.ViewModel
{
    public class accountingInfoViewModel
    {
        public int AccountingInfoId { get; set; }
        public int PatientId { get; set; }
        public string Patient { get; set; }
        public string Firstname { get; set; }
        public string Lastname { get; set; } 
        public string Fullname { get; set; } 

        public string Gmail { get; set; } 


        public string? PayableStatus { get; set; }
        public decimal Balance { get; set; }

    }
}