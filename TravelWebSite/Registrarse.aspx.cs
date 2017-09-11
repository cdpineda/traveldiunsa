using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelWebSite.PaqueteWS;

namespace TravelWebSite
{
    public partial class Registrarse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void LbSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
                string vUsuario = TxtUser.Text;
                string vPassword = TxtPassword.Text;
                string vCorreo = TxtCorreo.Text;
                int validar = 0;

                if (validar == 0)
                {
                    if (vUsuario != "" || vPassword != "" || vCorreo != "")
                    {
                        // Validamos que por lo menos un campo este lleno para asi personalizar los mensajes.
                        validar = 1;
                    }
                    else
                    {
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "clave", "alert('Debe ingresar la información requerida para poder registrarse.');", true);
                    }
                }

                if (validar == 1)
                {
                    if (vUsuario != "")
                    {
                        if (vPassword != "")
                        {
                            if (vCorreo != "")
                            {
                                int Estado = paquetesWS.REGISTROUSUARIO(vUsuario, vPassword, vCorreo);

                                if (Estado == 0)
                                {
                                    string script = @"alert('¡Se ha registrado exitosamente! Por favor inicie sesión!');
                                    window.location.href='Login.aspx';";
                                    ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
                                }
                                else
                                {
                                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "clave", "alert('¡El correo de este usuario ya está registrado! Inicie sesión o registrese con otro correo.');", true);
                                }
                            }
                            else
                            {
                                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "clave", "alert('Debe ingresar un correo electrónico.');", true);
                            }
                        }
                        else
                        {
                            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "clave", "alert('Debe ingresar una contraseña.');", true);
                        }
                    }
                    else
                    {
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "clave", "alert('Debe ingresar un nombre de usuario.');", true);
                    }
                }

            }
            catch (Exception ex)
            {

                throw;
            }
        }
    }
}