using ConsultasModel;
using ConsultasModel.DAL;

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
        public ConsultasBDEntities1 dbEntities = new ConsultasBDEntities1();
        private void CargarTabla(List<PuntoCarga> puntos)
        {
            PuntosCargaGrid.DataSource = puntos;
            PuntosCargaGrid.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            List<PuntoCarga> puntos = new PuntosCargaDAL().GetAll();
            idPuntoCarga.DataSource = puntos;
            DireccionTxt.DataTextField = "id";
            DireccionTxt.DataValueField = "id";
            DireccionTxt.DataBind();
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

        protected void guardarBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Response.Redirect("VerPuntosCarga.aspx");
            }
        }
        protected void CargarDatos_Click(object sender, EventArgs e)
        {
          
        }
    }
}