﻿using System;
using System.Collections.Generic;

namespace SEPHMS.Entities
{
    public partial class Signup
    {
        public int Id { get; set; }
        public string Fullname { get; set; }
        public string Email { get; set; }
        public string Address { get; set; }
        public string Password { get; set; }
    }
}
