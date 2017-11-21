using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelWebSite.PaqueteWS;

namespace TravelWebSite
{
    public partial class PreguntasConfiguradas : System.Web.UI.Page
    {
        public string Mensaje;
        public string Pregunta1;
        public string Pregunta2;
        public string Respuesta1;
        public string Respuesta2;
        string[] valores;
        PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Login.UsuarioCorreo != "")
            {
                string trama = paquetesWS.RECUPERARPREGUNTASR(Login.UsuarioCorreo);
                valores = trama.Split('|');
                Pregunta1 = valores[0];
                Respuesta1 = valores[1];
                Pregunta2 = valores[2];
                Respuesta2 = valores[3];
                if (Pregunta1=="")
                {
                    Pregunta1 = "Pregunta No.1 - No Configurada";
                }
                if (Pregunta2 == "")
                {
                    Pregunta2 = "Pregunta No.2 - No Configurada";
                }
                if (Respuesta1 == "")
                {
                    Respuesta1 = "Respuesta No.1 - No Configurada";
                }
                if (Respuesta2 == "")
                {
                    Respuesta2 = "Respuesta No.2 - No Configurada";
                }
            }
        }

        protected void LbModificar_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("ConfigurarPreguntas.aspx");
            }
            catch (Exception ex)
            {

                Mensaje = ex.ToString();
            }
        }
    }
}