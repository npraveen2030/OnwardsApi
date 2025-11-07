using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class UserScheduleProfileDto
    {
        public DateTime Date { get; set; }
        public string? Info { get; set; }
        public int? ScheduleId {get;set; }
        public int? h9to10 { get; set; }
        public int? h10to11 { get; set; }
        public int? h11to12 { get; set; }
        public int? h2to3 { get; set; }
        public int? h3to4 { get; set; }
        public int? h4to5 { get; set; }
        public int? h5to6 { get; set; }
        public int? h6to7 { get; set; }
        public int? h7to8 { get; set; }
        public int? h8to9 { get; set; }
        public int? h9to10pm { get; set; }
        public int? h10to11pm { get; set; }
        public int? h11to12pm { get; set; }
    }
}
