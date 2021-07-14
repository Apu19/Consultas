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
    public partial class VerEstaciones : System.Web.UI.Page
    {
        EstacionesDAL estacionDAL = new EstacionesDAL();
        private void CargarTabla(List<Estacion> estaciones)
        {
            EstacionesGrid.DataSource = estaciones;
            EstacionesGrid.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarTabla(new EstacionesDAL().GetAll());
            }
        }

        protected void AgregarEstaciones_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarEstacion.aspx");
        }

        protected void EstacionesGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "eliminar")
            {
                int capElminar = Convert.ToInt32(e.CommandArgument);
                estacionDAL.Remove(capElminar);
                //Actualizar la grilla
                CargarTabla(estacionDAL.GetAll());
            }
        }
    }
}