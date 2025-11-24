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

        public string? h9to10 { get; set; }
        public string? h10to11 { get; set; }
        public string? h11to12 { get; set; }
        public string? h2to3 { get; set; }
        public string? h3to4 { get; set; }
        public string? h4to5 { get; set; }
        public string? h5to6 { get; set; }
        public string? h6to7 { get; set; }
        public string? h7to8 { get; set; }
        public string? h8to9 { get; set; }
        public string? h9to10pm { get; set; }
        public string? h10to11pm { get; set; }
        public string? h11to12pm { get; set; }
    }

    public class UserScheduleTVP
    {
        public int? Id { get; set; }
        public int SchedulerId { get; set; }
        public int? ParticipantId { get; set; }
        public DateTime Date { get; set; }
        public TimeSpan StartTime { get; set; }
        public int LoginId { get; set; }
    }
}
