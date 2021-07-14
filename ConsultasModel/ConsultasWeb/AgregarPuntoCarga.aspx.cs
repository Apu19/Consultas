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
    public partial class AgregarPuntos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {      
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                PuntoCarga p = new PuntoCarga();
                p.CapMax = Convert.ToInt32(capMaxTxt.Text);
                p.Tipo = TipoDDL.SelectedValue;
                p.FechaVenc = FechaVenc.SelectedDate.ToString();
                PuntosCargaDAL puntoDAL = new PuntosCargaDAL();
                puntoDAL.Add(p);
                Response.Redirect("VerPuntosCarga.aspx");
            }
            else
            {

            }

        }

        protected void FechaVenc_SelectionChanged(object sender, EventArgs e)
        {
            FechaTxt.Text = FechaVenc.SelectedDate.ToString().ToString();
        }
    }
}