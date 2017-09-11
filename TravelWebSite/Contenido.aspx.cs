using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelWebSite.PaqueteWS;


namespace TravelWebSite
{
    public partial class Contenido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
             PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
            string IdValue = Request.QueryString["id"];
            int IdNum = Convert.ToInt32(IdValue);
            string resultado = paquetesWS.PAGINACONTENIDO(IdNum);
            LitPaginaContenido.Text = resultado;
        }
    }
}