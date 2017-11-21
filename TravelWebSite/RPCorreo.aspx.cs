using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelWebSite.PaqueteWS;

namespace TravelWebSite
{
    public partial class RPCorreo : System.Web.UI.Page
    {
        public string Mensaje;
        public PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
        public static string RecuperaCorreo;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Siguiente_Click(object sender, EventArgs e)
        {
            try
            {
                RecuperaCorreo = txtCorreo.Text;
                if (RecuperaCorreo!="")
                {
                    int valido = paquetesWS.VERIFICARUSUARIOREDES(RecuperaCorreo);
                    if (valido == 0)
                    {
                        Response.Redirect("RecuperarPassword.aspx");
                    }
                    else
                    {
                        Mensaje = "El correo electrónico que ingresaste no existe en nuestros registros. Por favor, registrate o intenta con otro correo electrónico.";
                        MensajeError.Attributes["class"] = "show";
                    }
                }
                else
                {
                    Mensaje = "Ingrese un correo electrónico.";
                    MensajeError.Attributes["class"] = "show";
                }
                
                
            }
            catch (Exception ex)
            {

                Mensaje = ex.ToString();
                MensajeError.Attributes["class"] = "show";
            }
        }

        protected void Cancelar_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Login.aspx");
            }
            catch (Exception ex)
            {

                Mensaje = ex.ToString();
                MensajeError.Attributes["class"] = "show";
            }
        }
    }
}