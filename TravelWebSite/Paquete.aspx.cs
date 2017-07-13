using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelWebSite.PaqueteWS;

namespace TravelWebSite
{
    public partial class Paquete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
            
            string IdValue= Request.QueryString["id"];
            int IdNum = Convert.ToInt32(IdValue);            
            string resultado = paquetesWS.DESTINODETALLE(IdNum);
            LtDetallePaquete.Text = resultado;
            resultado = paquetesWS.BOLETINFOOTER();
            LtBoletin.Text = resultado;
            string coordenada;
            string Lat1,Lat2 = "";                        
            coordenada=paquetesWS.COORDENADASPAQUETE(IdNum);
            string[] coordenadas = coordenada.Split(',');
            Lat1 = coordenadas[0];
            Lat2 = coordenadas[1];
            lblLat1.Text = Lat1;
            lblLat2.Text = Lat2;
        }
    }
}