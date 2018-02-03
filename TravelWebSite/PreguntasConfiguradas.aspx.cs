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
        string aR1;
        string aR2;
        string[] valores;
        PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["CorreoUsuario"] != "" && (string)Session["CorreoUsuario"] != null)
            {
                string trama = paquetesWS.RECUPERARPREGUNTASR((string)Session["CorreoUsuario"]);
                valores = trama.Split('|');

                Pregunta1 = valores[0];
                Pregunta2 = valores[2];
                
                if (Pregunta1=="")
                {
                    Pregunta1 = "Pregunta No.1 - No Configurada";
                }
                else
                {
                    int contarR1 = valores[1].Count();
                    for (int r1 = 2; r1 < contarR1; r1++)
                    {
                        aR1 += "*";
                    }
                    Respuesta1 = valores[1].Substring(0, 1) + aR1 + valores[1].Substring(contarR1 - 1, 1);
                }

                if (Pregunta2 == "")
                {
                    Pregunta2 = "Pregunta No.2 - No Configurada";
                }
                else
                {
                    int contarR2 = valores[3].Count();
                    for (int r2 = 2; r2 < contarR2; r2++)
                    {
                        aR2 += "*";
                    }
                    Respuesta2 = valores[3].Substring(0, 1) + aR2 + valores[3].Substring(contarR2 - 1, 1);
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