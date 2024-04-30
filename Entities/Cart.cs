using System;
using System.Collections.Generic;

namespace SEPHMS.Entities
{
    public partial class Cart
    {
        public int CartId { get; set; }
        public int MedicineId { get; set; }
        public int CQuantity { get; set; }
        public int CMockStock { get; set; }
    }
}
