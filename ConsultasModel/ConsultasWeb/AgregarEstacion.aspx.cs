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
    public partial class AgregarEstacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            }
        }

        protected void AgregarEstacionBtn_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Estacion es = new Estacion();
                es.Direccion = DireccionTxt.Text;
                es.CapMax = Convert.ToInt32(capMaxTxt.Text);
                es.Region = regionTxt.Text;
                es.Horario = HorarioTxt.Text;
                EstacionesDAL estacionDAL = new EstacionesDAL();
                estacionDAL.Add(es);
                Response.Redirect("VerEstaciones.aspx");
            }
            else
            {

            }
        }
    }
}