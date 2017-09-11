using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelWebSite.PaqueteWS;

namespace TravelWebSite
{
    public partial class InformacionAdicional : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LbSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
                string vTelefono = TxtTelefono.Text;
                string vCelular = TxtCelular.Text;
                string vPasaporte = TxtPasaporte.Text;
                string FechaVencimiento = TxtFechaVencePasaporte.Text;
                

                if (Login.UsuarioCorreo != "")
                {
                    if (vTelefono != "" && vCelular != "" && vPasaporte != "" && FechaVencimiento != "")
                    {
                        DateTime vFechaVencePasaporte = Convert.ToDateTime(FechaVencimiento);
                        int Estado = paquetesWS.INFORMACIONADICIONAL(Login.UsuarioCorreo, vTelefono, vCelular, vPasaporte, vFechaVencePasaporte);
                        if (Estado == 0)
                        {
                            string script = @"alert('Información Actualizada Satisfactoriamente');
                            window.location.href='Index.aspx';";
                            ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
                        }
                        else
                        {
                            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "clave", "alert('Por favor debe iniciar sesión primero.');", true);
                        }
                    }
                    else
                    {
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "clave", "alert('Debe llenar todos los campos.');", true);
                    }
                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "clave", "alert('Debe iniciar sesión para completar esta información.');", true);
                }

            }
            catch (Exception ex)
            {

                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "clave", "alert('Formato de fecha incorrecto. Ejemplo: Día/Mes/Año');", true);
            }
        }
    }
}