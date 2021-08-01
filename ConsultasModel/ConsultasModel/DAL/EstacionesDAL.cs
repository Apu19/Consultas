
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsultasModel.DAL
{
    public class EstacionesDAL
    {
        public ConsultasBDEntities1 dbEntities = new ConsultasBDEntities1();

        public void Add(Estacion e)
        {
            dbEntities.Estacion.Add(e);
            dbEntities.SaveChanges();
        }

        public List<Estacion> GetAll()
        {
            return dbEntities.Estacion.ToList();
        }

        public void Remove(string direccion)
        {
            //cambiar a direccion
            Estacion e = dbEntities.Estacion.Find(direccion);
            dbEntities.Estacion.Remove(e);
            dbEntities.SaveChanges();
        }
    }
}
