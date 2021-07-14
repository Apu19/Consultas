using ConsultasModel.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsultasModel.DAL
{
    public class PuntosCargaDAL
    {
        private static List<PuntoCarga> puntos = new List<PuntoCarga>();

        public void Add(PuntoCarga p)
        {
            puntos.Add(p);
        }

        public List<PuntoCarga> GetAll()
        {
            return puntos;
        }

        public List<PuntoCarga> GetAll(int tipo)
        {
            string tipoSelect;
            if(tipo == 1)
            {
                tipoSelect = "Eléctrico";
            }
            else
            {
                tipoSelect = "Dual";
            }
            return puntos.FindAll(p => p.Tipo == tipoSelect);
        }

    }
}
