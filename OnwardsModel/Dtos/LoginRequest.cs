﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class LoginRequest
    {
        public string EmployeeCode { get; set; }
        public string Password { get; set; }
    }
}
