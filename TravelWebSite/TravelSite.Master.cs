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
        public string correo;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Login.UsuarioCorreo != "")
            {
                correo = Login.UsuarioCorreo;
            }
            else
            {
                correo = "Registrarse";
            }

            if (Page.IsPostBack)
            {
                if (Request.Params["__EVENTTARGET"] == "Salir")
                {
                    Salir();
                }
            }
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

        protected void LbSubmit_ClickRegistrar(object sender, EventArgs e)
        {
            try
            {
                if (correo == "Registrarse")
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    Response.Redirect("InformacionAdicional.aspx");
                }
            }
            catch (Exception ex)
            {

                throw;
            }
        }

        protected void Salir()
        {
            try
            {
                Login.UsuarioCorreo = "";
                Response.Redirect("Index.aspx");

            }
            catch (Exception ex)
            {

                throw;
            }
        }

    }
}