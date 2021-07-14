using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsultasModel.DTO
{
    public class Estacion
    {
        private string direccion;
        private int capMax;
        private string region;
        private string horario;


        public int CapMax { get => capMax; set => capMax = value; }
        public string Region { get => region; set => region = value; }
        public string Horario { get => horario; set => horario = value; }
        public string Direccion { get => direccion; set => direccion = value; }
    }
}
