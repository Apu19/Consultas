using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsultasModel.DTO
{
    public class PuntoCarga
    {
        private string tipo; //electrico o dual
        private int capMax;
        private string fechaVenc;

        public int CapMax { get => capMax; set => capMax = value; }
        public string FechaVenc { get => fechaVenc; set => fechaVenc = value; }
        public string Tipo { get => tipo; set => tipo = value; }
    }
}
