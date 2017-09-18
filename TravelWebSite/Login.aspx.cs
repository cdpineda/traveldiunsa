using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelWebSite.PaqueteWS;
using Facebook;
using System.Net;
using System.IO;

namespace TravelWebSite
{
    
    public partial class Login : System.Web.UI.Page
    {
        protected string estadoFB;
        protected string correoFacebook;
        protected string nombreFacebook;
        protected string correoGmail;
        protected string nombreGmail;
        public static string UsuarioCorreo = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            correoFacebook = CorreoFBASP.Value;
            nombreFacebook = NombreFBASP.Value;
            correoGmail = CorreoGmailASP.Value;
            nombreGmail = NombreGmailASP.Value;
            if (Page.IsPostBack)
            {
                if (Request.Params["__EVENTTARGET"] == "RegistrarFB")
                {
                    RegistrarFB();
                }

                if (Request.Params["__EVENTTARGET"] == "RegistrarGM")
                {
                    RegistrarGM();
                }
            }
        }

        protected void LbSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
                string vPassword = TxtPassword.Text;
                string vCorreo = TxtCorreo.Text;
                int Estado = paquetesWS.INICIARSESION(vCorreo, vPassword);
                if (Estado == 0)
                {
                    UsuarioCorreo = vCorreo;
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "clave", "alert('Bienvenido');", true);
                    Response.Redirect("Index.aspx");
                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "clave", "alert('¡Correo o contraseña inválidos!');", true);
                }

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
                Response.Redirect("Registrarse.aspx");
            }
            catch (Exception ex)
            {

                throw;
            }
        }

        protected void RegistrarFB()
        {
            try
            {
                PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
                int validar = 0;

                if (validar == 0)
                {
                    if (correoFacebook != "" || nombreFacebook != "")
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
                    if (correoFacebook != "")
                    {
                        int Estado = paquetesWS.REGISTROUSUARIO(nombreFacebook, "", correoFacebook, "FB");

                        if (Estado == 0)
                        {
                            Login.UsuarioCorreo = correoFacebook;
                            string script = @"alert('¡Se ha registrado exitosamente! Por favor inicie sesión!');
                                window.location.href='Index.aspx';";
                            ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
                        }
                        else
                        {
                            Login.UsuarioCorreo = correoFacebook;
                            string script = @"alert('¡Bienvenido!');
                                window.location.href='Index.aspx';";
                            ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
                        }
                    }
                    else
                    {
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "clave", "alert('Debe ingresar un correo electrónico.');", true);
                    }
                }

            }
            catch (Exception ex)
            {

                throw;
            }
        }

        protected void RegistrarGM()
        {
            try
            {
                PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
                int validar = 0;

                if (validar == 0)
                {
                    if (correoGmail != "" || nombreGmail != "")
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
                    if (correoGmail != "")
                    {
                        int Estado = paquetesWS.REGISTROUSUARIO(nombreGmail, "", correoGmail, "GM");

                        if (Estado == 0)
                        {
                            Login.UsuarioCorreo = correoGmail;
                            string script = @"alert('¡Se ha registrado exitosamente! Por favor inicie sesión!');
                                window.location.href='Index.aspx';";
                            ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
                        }
                        else
                        {
                            Login.UsuarioCorreo = correoGmail;
                            string script = @"alert('¡Bienvenido!');
                                window.location.href='Index.aspx';";
                            ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
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