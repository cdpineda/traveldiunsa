using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelWebSite.PaqueteWS;

namespace TravelWebSite
{
    public partial class RecuperarPassword : System.Web.UI.Page
    {
        public string Mensaje;
        public string Pregunta1;
        public string Respuesta1;
        public string Pregunta2;
        public string Respuesta2;
        public PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
        protected void Page_Load(object sender, EventArgs e)
        {
            string trama= paquetesWS.RECUPERARPREGUNTASR(RPCorreo.RecuperaCorreo);
            if(trama!="1")
            {
                string[] PreRes = trama.Split('|');
                Pregunta1 = PreRes[0];
                Respuesta1 = PreRes[1];
                Pregunta2 = PreRes[2];
                Respuesta2 = PreRes[3];
            }   
        }

        protected void Siguiente_Click(object sender, EventArgs e)
        {
            try
            {
                if(Respuesta1== txtRespuesta1.Text && Respuesta2== txtRespuesta2.Text)
                {
                    Response.Redirect("ActualizarPassword.aspx");
                }
                else
                {
                    Mensaje = "Sus respuestas no coinciden. Intente de nuevo";
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
                RPCorreo.RecuperaCorreo = "";
                Response.Redirect("RPCorreo.aspx");
            }
            catch (Exception ex)
            {

                Mensaje = ex.ToString();
                MensajeError.Attributes["class"] = "show";
            }
        }

    }
}