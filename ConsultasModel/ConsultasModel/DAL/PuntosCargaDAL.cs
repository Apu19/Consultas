
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsultasModel.DAL
{
    public class PuntosCargaDAL
    {
        public ConsultasBDEntities1 dbEntities = new ConsultasBDEntities1();

        public void Add(PuntoCarga p)
        {
            dbEntities.PuntoCarga.Add(p);
            dbEntities.SaveChanges();
        }

        public List<PuntoCarga> GetAll()
        {
            return dbEntities.PuntoCarga.ToList();
        }

        public List<PuntoCarga> GetAll(int tipo)
        {
            string tipoSelect;
            if (tipo == 1)
            {
                tipoSelect = "Eléctrico";
            }
            else
            {
                tipoSelect = "Dual";
            }
            var query = from pc in dbEntities.PuntoCarga
                        where pc.tipo == tipoSelect
                        select pc;
            return query.ToList();
        }

    }
}
