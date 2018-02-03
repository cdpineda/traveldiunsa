using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelWebSite.PaqueteWS;

namespace TravelWebSite
{
    public partial class Busqueda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
            string resultado = paquetesWS.BUSQUEDAPAQUETES(1,0);
            LitBusqueda.Text = resultado;
            resultado = paquetesWS.LISTAETIQUETAS();
            LitEtiquetas.Text = resultado;
        }

        [System.Web.Services.WebMethod]
        public static string getBusquedaResult(short opcion,double valor)
        {
            PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
            //string [] response = { };
            string resultado = "";
            try
            {
                resultado = paquetesWS.BUSQUEDAPAQUETES(opcion,valor);

                //response = resultado;
            }
            catch (Exception)
            {

                throw;
            }
            return resultado;
        }
    }
}