using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelWebSite.PaqueteWS;

namespace TravelWebSite
{
    public partial class ActualizarPassword : System.Web.UI.Page
    {
        public string Mensaje;
        public PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
   
        protected void Confirmar_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtPassword.Text != "")
                {

                    if (txtPassword.Text==txtPasswordConfirmar.Text)
                    {
                        int valido=paquetesWS.ACTUALIZARPASSWORD(RPCorreo.RecuperaCorreo, txtPassword.Text);
                        if (valido == 0)
                        {
                            Response.Redirect("Login.aspx");
                        }
                    }
                    else
                    {
                        Mensaje = "Contraseñas no coinciden";
                        MensajeError.Attributes["class"] = "show";
                    }

                }
                else
                {
                    Mensaje = "Ingrese una contraseña";
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
                Response.Redirect("RecuperarPassword.aspx");
            }
            catch (Exception ex)
            {

                Mensaje = ex.ToString();
                MensajeError.Attributes["class"] = "show";
            }
        }
    }
}