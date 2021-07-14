using ConsultasModel.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsultasModel.DAL
{
    public class EstacionesDAL
    {
        private static List<Estacion> estaciones = new List<Estacion>();

        public void Add(Estacion e)
        {
            estaciones.Add(e);
        }

        public List<Estacion> GetAll()
        {
            return estaciones;
        }

        public void Remove(int capMaxTxt)
        {
            //busqueda
            Estacion est = estaciones.Find(e => e.CapMax == capMaxTxt);
            //eliminación
            estaciones.Remove(est);
        }
    }
}
