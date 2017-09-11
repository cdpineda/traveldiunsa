using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelWebSite.PaqueteWS;

namespace TravelWebSite
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void LbAcercaDe_Click(object sender, EventArgs e)
        {
            try
            {
                PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
                int Id = paquetesWS.SELECCIONARPAGINACONTENIDO("ACERCA DE");
                Response.Redirect("Contenido.aspx?id=" + Id);

            }
            catch (Exception ex)
            {

                throw;
            }
        }

        protected void LbTerminosUso_Click(object sender, EventArgs e)
        {
            try
            {
                PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
                int Id = paquetesWS.SELECCIONARPAGINACONTENIDO("TÉRMINOS DE USO");
                Response.Redirect("Contenido.aspx?id=" + Id);

            }
            catch (Exception ex)
            {

                throw;
            }
        }

        protected void LbPoliticasPrivacidad_Click(object sender, EventArgs e)
        {
            try
            {
                PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
                int Id = paquetesWS.SELECCIONARPAGINACONTENIDO("POLÍTICA DE PRIVACIDAD");
                Response.Redirect("Contenido.aspx?id=" + Id);

            }
            catch (Exception ex)
            {

                throw;
            }
        }

        protected void LbSucursales_Click(object sender, EventArgs e)
        {
            try
            {
                PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
                int Id = paquetesWS.SELECCIONARPAGINACONTENIDO("SUCURSALES");
                Response.Redirect("Contenido.aspx?id=" + Id);

            }
            catch (Exception ex)
            {

                throw;
            }
        }

        protected void LbFormasPago_Click(object sender, EventArgs e)
        {
            try
            {
                PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
                int Id = paquetesWS.SELECCIONARPAGINACONTENIDO("FORMAS DE PAGO");
                Response.Redirect("Contenido.aspx?id=" + Id);

            }
            catch (Exception ex)
            {

                throw;
            }
        }

        protected void LbDocumentosViaje_Click(object sender, EventArgs e)
        {
            try
            {
                PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
                int Id = paquetesWS.SELECCIONARPAGINACONTENIDO("DOCUMENTOS DE VIAJE");
                Response.Redirect("Contenido.aspx?id=" + Id);

            }
            catch (Exception ex)
            {

                throw;
            }
        }



    }
}