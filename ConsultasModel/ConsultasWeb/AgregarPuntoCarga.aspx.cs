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
    public partial class AgregarPuntos : System.Web.UI.Page
    {
  
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Estacion> estaciones = new EstacionesDAL().GetAll();
                DireccionTxt.DataSource = estaciones;
                DireccionTxt.DataTextField = "direccion";
                DireccionTxt.DataValueField = "direccion";
                DireccionTxt.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                PuntoCarga p = new PuntoCarga();
                p.capMax = Convert.ToInt32(capMaxTxt.Text);
                p.tipo = TipoDDL.SelectedValue;
                p.fechaVenc = FechaTxt.Text;
                p.direccionPunto = DireccionTxt.Text.ToString();
                PuntosCargaDAL puntoDAL = new PuntosCargaDAL();
                puntoDAL.Add(p);
                Response.Redirect("VerPuntosCarga.aspx");
            }
            
        }
    }
}