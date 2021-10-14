using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Task_Tigaraksa.Models
{
    public class DriverVM
    {
        public string NomorPolisi { get; set; }
        public string DriverName { get; set; }
        public string NomorSuratJalan { get; set; }
        public DateTime WaktuCheckin { get; set; }
        public ICollection<ListPoVM>  ListPo { get; set; }


    }
}
