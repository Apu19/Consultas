using ConsultasModel.DAL;
using ConsultasModel.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsultasWeb
{
    public partial class VerPuntosCarga : System.Web.UI.Page
    {
        PuntosCargaDAL cargaDAL = new PuntosCargaDAL();
        private void CargarTabla(List<PuntoCarga> puntos)
        {
            PuntosCargaGrid.DataSource = puntos;
            PuntosCargaGrid.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarTabla(new PuntosCargaDAL().GetAll());
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarPuntoCarga.aspx");
        }

        protected void TipoDDL_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (TipoDDL.SelectedIndex == 0)
            {
                CargarTabla(cargaDAL.GetAll());
            }
            else
            {
                //pausa
                System.Threading.Thread.Sleep(500);
                int tipoSeleccionado = Convert.ToInt32(TipoDDL.SelectedValue);
                List<PuntoCarga> filtrada = cargaDAL.GetAll(tipoSeleccionado);
                CargarTabla(filtrada);
            }
        }
    }
}