﻿using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Interface
{
    public interface IComplianceRepository
    {
        public Task AddOrUpdateUserComplianceAsync(Compliance compliance);
    }
}
