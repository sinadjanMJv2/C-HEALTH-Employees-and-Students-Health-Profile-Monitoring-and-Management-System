using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SEPHMS.ViewModel
{
    public class LogBookDetailsViewModel
    {
        public int LogBookDetailsId { get; set; }
        public int Logbookid { get; set; }

        public int MedicineId { get; set; }
        public string MedicineName { get; set; } 
        public string? Units { get; set; } 
        public string Dosage { get; set; }

        public int Quantity{ get; set;}
      

    }
}