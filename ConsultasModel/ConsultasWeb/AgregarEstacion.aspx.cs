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
                es.direccion = DireccionTxt.Text;
                es.capMax = Convert.ToInt32(capMaxTxt.Text);
                es.region = DropDownList1.SelectedValue;
                es.horario = HorarioTxt.Text;
                EstacionesDAL estacionDAL = new EstacionesDAL();
                estacionDAL.Add(es);
                Response.Redirect("VerEstaciones.aspx");
            }
        }
    }
}