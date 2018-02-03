using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelWebSite.PaqueteWS;

namespace TravelWebSite
{
    public partial class ConfigurarPreguntas : System.Web.UI.Page
    {
        ListItem oItem;
        public string Mensaje;
        public string PreguntasDl;
        static int validar;
        public string Pregunta1;
        public string Pregunta2;
        public string Respuesta1;
        public string Respuesta2;
        string[] valores;
        PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
        protected void Page_Load(object sender, EventArgs e)
        {
                if ((string)Session["CorreoUsuario"] != "" && (string)Session["CorreoUsuario"] != null)
                {
                    string trama = paquetesWS.RECUPERARVALUEPREGUNTASR((string)Session["CorreoUsuario"]);
                    valores = trama.Split('|');
                    Pregunta1 = valores[0];
                    Respuesta1 = valores[1];
                    Pregunta2 = valores[2];
                    Respuesta2 = valores[3];
                }
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
                    }
             

                for (int j = 0; j < total; j++)
                {
                    string[] item2 = Valores[j].Split('*');
                    ListItem oItem2 = new ListItem(item2[0], item2[1]);
                    combo2.Items.Add(oItem2);
                }

                if (Pregunta1 != "")
                    {
                        int index0 = Convert.ToInt32(Pregunta1);
                        int index1 = index0 - 1;
                        ddlComputedColumns.SelectedIndex = index1;
                        txtRespuesta1.Attributes["placeholder"] = Respuesta1;
                    }
                    if (Pregunta2 != "")
                    {
                        int index = Convert.ToInt32(Pregunta2);
                        int index2 = index - 1;
                        combo2.SelectedIndex = index2;
                        txtRespuesta2.Attributes["placeholder"] = Respuesta2;
                    }
                }
        }

        protected void LbModificar_Click(object sender, EventArgs e)
        {
            try
            {
                if (ddlComputedColumns.SelectedValue != combo2.SelectedValue)
                {
                    string vRespuesta1;
                    string vRespuetsa2;
                    if (txtRespuesta1.Text == "")
                    {
                        vRespuesta1 = Respuesta1;
                        if (Respuesta1!="")
                        {
                            if (txtRespuesta2.Text == "")
                            {
                                vRespuetsa2 = Respuesta2;
                                if (Respuesta2!="")
                                {
                                    validar = 0;
                                    paquetesWS.GUARDARPREGUNTAS((string)Session["CorreoUsuario"], ddlComputedColumns.SelectedValue, vRespuesta1, combo2.SelectedValue, vRespuetsa2);
                                    Response.Redirect("PreguntasConfiguradas.aspx");
                                }
                                else
                                {
                                    Mensaje = "Ingrese una respuesta para la segunda pregunta";
                                    MensajeError.Attributes["class"] = "show";
                                }
                            }
                            else
                            {
                                validar = 0;
                                vRespuetsa2 = txtRespuesta2.Text;
                                paquetesWS.GUARDARPREGUNTAS((string)Session["CorreoUsuario"], ddlComputedColumns.SelectedValue, vRespuesta1, combo2.SelectedValue, vRespuetsa2);
                                Response.Redirect("PreguntasConfiguradas.aspx");
                            }
                        }
                        else
                        {
                            Mensaje = "Ingrese una respuesta para la primer pregunta";
                            MensajeError.Attributes["class"] = "show";
                        }
                        
                    }
                    else
                    {
                        vRespuesta1 = txtRespuesta1.Text;
                        if (txtRespuesta2.Text == "")
                        {
                            vRespuetsa2 = Respuesta2;
                            if (Respuesta2 != "")
                            {
                                validar = 0;
                                paquetesWS.GUARDARPREGUNTAS((string)Session["CorreoUsuario"], ddlComputedColumns.SelectedValue, vRespuesta1, combo2.SelectedValue, vRespuetsa2);
                                Response.Redirect("PreguntasConfiguradas.aspx");
                            }
                            else
                            {
                                Mensaje = "Ingrese una respuesta para la segunda pregunta";
                                MensajeError.Attributes["class"] = "show";
                            }
                        }
                        else
                        {
                            validar = 0;
                            vRespuetsa2 = txtRespuesta2.Text;
                            paquetesWS.GUARDARPREGUNTAS((string)Session["CorreoUsuario"], ddlComputedColumns.SelectedValue, vRespuesta1, combo2.SelectedValue, vRespuetsa2);
                            Response.Redirect("PreguntasConfiguradas.aspx");
                        }
                    }

                    
                    
                }
                else
                {
                    Mensaje = "Debe seleccionar una pregunta diferente a la primera.";
                    MensajeError.Attributes["class"] = "show";
                }

            }
            catch (Exception ex)
            {

                Mensaje = ex.ToString();
            }
        }
        protected void LbCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("PreguntasConfiguradas.aspx");
        }
    }
}