using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SEPHMS.ViewModel
{
    public class cartList
    {
        public int MedicineId { get; set; }
        public int CategoryId { get; set; }
        public string CategoryName { get; set; }
        public string MedicineName { get; set; } 
        public string Units { get; set; } 
        public int Stock { get; set; }
        public string Dosage { get; set; }

        public int Quantity{ get; set;}
        public int MockStock{ get; set;}
        public int CartId { get; set;}

    }
}