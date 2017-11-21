using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelWebSite.PaqueteWS;

namespace TravelWebSite
{
    public partial class Preguntas : System.Web.UI.Page
    {
        public string Mensaje;
        public string PreguntasDl;
        ListItem oItem;
        static int validar=0;
        public PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (validar == 0)
            {
                validar = 1;
                PreguntasDl = paquetesWS.OBTENERPREGUNTAS();
                string[] Valores = PreguntasDl.Split('|');
                int Length = Valores.Length;
                int total = Length - 1;
                for (int i = 0; i < total; i++)
                {
                    string[] item = Valores[i].Split('*');
                    ListItem oItem = new ListItem(item[0], item[1]);
                    ddlComputedColumns.Items.Add(oItem);
                    ddlComputedColumns2.Items.Add(oItem);
                }
            }
        }

        protected void Finalizar_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtRespuesta1.Text!="")
                {
                    if (ddlComputedColumns.SelectedValue != ddlComputedColumns2.SelectedValue)
                    {
                        if (txtRespuesta2.Text != "")
                        {

                            validar = 0;
                            paquetesWS.GUARDARPREGUNTAS(Login.UsuarioCorreo, ddlComputedColumns.SelectedValue, txtRespuesta1.Text, ddlComputedColumns2.SelectedValue, txtRespuesta2.Text);
                            Response.Redirect("Index.aspx");
                        }
                        else
                        {
                            validar = 1;
                            Mensaje = "Ingrese una respuesta para la pregunta número dos";
                            MensajeError.Attributes["class"] = "show";
                        }
                    }
                    else
                    {
                        validar = 1;
                        Mensaje = "Debe seleccionar una pregunta diferente a la primera.";
                        MensajeError.Attributes["class"] = "show";
                    }
                    
                }
                else
                {
                    validar = 1;
                    Mensaje = "Ingrese una respuesta para la pregunta número uno";
                    MensajeError.Attributes["class"] = "show";
                }
                
            }
            catch (Exception ex)
            {

                Mensaje = ex.ToString();
                MensajeError.Attributes["class"] = "show";
            }
        }
    }
}