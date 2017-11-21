using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelWebSite.PaqueteWS;

namespace TravelWebSite
{
    public partial class Registro : System.Web.UI.Page
    {
        protected string estadoFB;
        protected string correoRegistro;
        protected string nombreFacebook;
        public string Mensaje;
        protected string nombreGmail;

        protected void Page_Load(object sender, EventArgs e)
        {
            PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
            string resultado = paquetesWS.TEOFRECEMOS("REGISTRO TE OFRECEMOS");
            LtTeOfrecemos.Text = resultado;
            nombreFacebook = NombreFBASP.Value;
            nombreGmail = NombreGmailASP.Value;
            if (Page.IsPostBack)
            {
                if (Request.Params["__EVENTTARGET"] == "RegistrarFB")
                {
                    correoRegistro = CorreoFBASP.Value;
                    RegistrarFB();
                }

                if (Request.Params["__EVENTTARGET"] == "RegistrarGM")
                {
                    correoRegistro = CorreoGmailASP.Value;
                    RegistrarGM();
                }
            }
        }

        protected void LbSubmit_Registrar(object sender, EventArgs e)
        {
            try
            {
                PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
                string vPasswordConfirmar = TxtPasswordConfirmacion.Text;
                string vPassword = TxtPassword.Text;
                string vCorreo = TxtCorreo.Text;
                string vNombres = txtNombres.Text;
                string vApellidos = txtApellidos.Text;
                int validar = 0;

                if (validar == 0)
                {
                    if (vNombres != "" || vApellidos !="" || vCorreo != "" || vPassword != "" || vPasswordConfirmar != "")
                    {
                        // Validamos que por lo menos un campo este lleno para asi personalizar los mensajes.
                        validar = 1;
                    }
                    else
                    {
                        Mensaje = "Debe ingresar todos los datos que se le piden para poder registrarse.";
                        MensajeError.Attributes["class"] = "show";
                    }
                }

                if (validar == 1)
                {
                    if (vNombres != "")
                    {
                        if (vApellidos != "")
                        {
                            if (vCorreo != "")
                            {
                                if (vPassword != "")
                                {
                                    if (vPasswordConfirmar != "")
                                    {
                                        if (vPassword == vPasswordConfirmar)
                                        {
                                            int Estado = paquetesWS.REGISTROUSUARIO(vNombres, vApellidos, vPassword, vCorreo, "PG");

                                            if (Estado == 0)
                                            {
                                                Login.UsuarioCorreo = vCorreo;
                                                Login.UsuarioNombres= vNombres;
                                                Login.UsuarioApellidos = vApellidos;
                                                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "clave", "alert('Bienvenido');", true);
                                                Response.Redirect("Preguntas.aspx");
                                            }
                                            else
                                            {
                                                Mensaje = "¡El correo de este usuario ya está registrado! Inicie sesión o registrese con otro correo.";
                                                MensajeError.Attributes["class"] = "show";
                                                TxtCorreo.Text = "";
                                                txtNombres.Text = "";
                                                txtApellidos.Text = "";
                                                TxtCorreo.Focus();
                                            }
                                        }
                                        else
                                        {
                                            Mensaje = "Las contraseñas no coinciden.";
                                            MensajeError.Attributes["class"] = "show";
                                            TxtPassword.Focus();
                                        }

                                    }
                                    else
                                    {
                                        Mensaje = "Debe ingresar ambas contraseñas.";
                                        MensajeError.Attributes["class"] = "show";
                                        TxtPassword.Focus();
                                    }
                                }
                                else
                                {
                                    Mensaje = "Debe ingresar ambas contraseñas.";
                                    MensajeError.Attributes["class"] = "show";
                                    TxtPassword.Focus();
                                }
                            }
                            else
                            {
                                Mensaje = "Debe ingresar un correo electrónico.";
                                MensajeError.Attributes["class"] = "show";
                                TxtCorreo.Focus();
                            }
                        }
                        else
                        {
                            Mensaje = "Debe ingresar al menos un apellido.";
                            MensajeError.Attributes["class"] = "show";
                            txtApellidos.Focus();
                        }
                    }
                    else
                    {
                        Mensaje = "Debe ingresar al menos un nombre.";
                        MensajeError.Attributes["class"] = "show";
                        txtNombres.Focus();
                    }
                }

            }
            catch (Exception ex)
            {
                Mensaje = ex.ToString();
                MensajeError.Attributes["class"] = "show";
            }
        }
        protected void LbSubmit_IniciarSesion(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void RegistrarFB()
        {
            try
            {
                PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
                int validar = 0;

                if (validar == 0)
                {
                    if (correoRegistro != "")
                    {
                        // Validamos que por lo menos un campo este lleno para asi personalizar los mensajes.
                        validar = 1;
                    }
                    else
                    {
                        Mensaje = "Ocurrió un error al obtener la información requerida. Por favor intente mas tarde.";
                        MensajeError.Attributes["class"] = "show";
                    }
                }

                if (validar == 1)
                {
                    if (correoRegistro != "")
                    {
                        int Estado = paquetesWS.REGISTROUSUARIO("", "", "", correoRegistro, "FB");

                        if (Estado == 0)
                        {
                            Login.UsuarioCorreo = correoRegistro;
                            Response.Redirect("ActualizarInformacionAdicional.aspx");
                        }
                        else
                        {
                            Login.UsuarioCorreo = correoRegistro;
                            string trama = paquetesWS.OBTENERNOMBREAPELLIDO(Login.UsuarioCorreo);
                            string[] Valores = trama.Split('|');
                            Login.UsuarioNombres = Valores[0];
                            Login.UsuarioApellidos = Valores[1];
                            Response.Redirect("Index.aspx");
                            //Mensaje = "¡El correo de este usuario ya está registrado! Inicie sesión o registrese con otro correo.";
                            //MensajeError.Attributes["class"] = "show";
                        }
                    }
                    else
                    {
                        Mensaje = "Ocurrió un error al obtener la información requerida. Por favor intente mas tarde.";
                        MensajeError.Attributes["class"] = "show";
                    }
                }

            }
            catch (Exception ex)
            {
                Mensaje = ex.ToString();
                MensajeError.Attributes["class"] = "show";
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
                    if (correoRegistro != "")
                    {
                        // Validamos que por lo menos un campo este lleno para asi personalizar los mensajes.
                        validar = 1;
                    }
                    else
                    {
                        Mensaje = "Ocurrió un error al obtener la información requerida. Por favor intente mas tarde.";
                        MensajeError.Attributes["class"] = "show";
                    }
                }

                if (validar == 1)
                {
                    if (correoRegistro != "")
                    {
                        int Estado = paquetesWS.REGISTROUSUARIO("", "", "", correoRegistro, "G+");

                        if (Estado == 0)
                        {
                            Login.UsuarioCorreo = correoRegistro;
                            Response.Redirect("ActualizarInformacionAdicional.aspx");
                        }
                        if (Estado == 1)
                        {
                            Login.UsuarioCorreo = correoRegistro;
                            string trama = paquetesWS.OBTENERNOMBREAPELLIDO(Login.UsuarioCorreo);
                            string[] Valores = trama.Split('|');
                            Login.UsuarioNombres = Valores[0];
                            Login.UsuarioApellidos = Valores[1];
                            Response.Redirect("Index.aspx");
                            //Mensaje = "¡El correo de este usuario ya está registrado! Inicie sesión o registrese con otro correo.";
                            //MensajeError.Attributes["class"] = "show";
                        }

                    }
                    else
                    {
                        Mensaje = "Ocurrió un error al obtener la información requerida. Por favor intente mas tarde.";
                        MensajeError.Attributes["class"] = "show";
                    }
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