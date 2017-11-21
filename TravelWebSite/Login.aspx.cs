using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelWebSite.PaqueteWS;

namespace TravelWebSite
{
    public partial class Login : System.Web.UI.Page
    {
        protected string estadoFB;
        protected string correoRegistro;
        public string Mensaje;
        public static string UsuarioCorreo = "";
        public static string UsuarioNombres = "";
        public static string UsuarioApellidos = "";
        public int EstadoGM = 2;
        public PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
        protected void Page_Load(object sender, EventArgs e)
        {
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

                //if (Request.Params["__EVENTTARGET"] == "CargarCorreos")
                //{
                //    CargarCorreos();
                //}
            }
        }

        protected void LbSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                string vPassword = TxtPassword.Text;
                string vCorreo = TxtCorreo.Text;
                string trama = paquetesWS.INICIARSESION(vCorreo, vPassword);

                string[] valores = trama.Split('|');
                int estado = Int32.Parse(valores[0]);
                switch (estado)
                {
                    case 0:
                        UsuarioCorreo = vCorreo;
                        UsuarioNombres = valores[1];
                        UsuarioApellidos = valores[2];
                        Response.Redirect("Index.aspx");
                        break;
                    case 1:
                        Console.WriteLine("<script>function alerta(){alertify.alert('<b>Blog Reaccion Estudio</b> probando Alertify', function() {});}</script>");
                        Mensaje = "El correo electrónico y la contraseña que ingresaste no coinciden con nuestros registros. Por favor, revisa e inténtalo de nuevo.";
                        MensajeError.Attributes["class"] = "show";
                        TxtCorreo.Focus();
                        break;
                    case 2:
                        Console.WriteLine("<script>function alerta(){alertify.alert('<b>Blog Reaccion Estudio</b> probando Alertify', function() {});}</script>");
                        Mensaje = "El correo electrónico y la contraseña que ingresaste no existen en nuestros registros. Por favor, registrate o intenta con otro correo electrónico.";
                        MensajeError.Attributes["class"] = "show";
                        TxtCorreo.Focus();
                        break;
                    case 3:
                        Console.WriteLine("<script>function alerta(){alertify.alert('<b>Blog Reaccion Estudio</b> probando Alertify', function() {});}</script>");
                        Mensaje = "El correo electrónico está registrado con Facebook o Google +. Por favor, inicie sesión a través de dichas redes sociales.";
                        MensajeError.Attributes["class"] = "show";
                        TxtCorreo.Focus();
                        break;
                }
            }
            catch (Exception ex)
            {

                Mensaje = ex.ToString();
                MensajeError.Attributes["class"] = "show";
            }
        }

        protected void LbSubmit_ClickRegistrar(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Registro.aspx");
            }
            catch (Exception ex)
            {

                Mensaje = ex.ToString();
                MensajeError.Attributes["class"] = "show";
            }
        }



        //protected void CargarCorreos()
        //{
        //    try
        //    {

        //    }
        //    catch (Exception ex)
        //    {

        //    }
        //}

        protected void RegistrarFB()
        {
            try
            {

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
                            UsuarioCorreo = correoRegistro;
                            Response.Redirect("ActualizarInformacionAdicional.aspx");
                        }
                        else
                        {
                            UsuarioCorreo = correoRegistro;
                            string trama = paquetesWS.OBTENERNOMBREAPELLIDO(UsuarioCorreo);
                            string[] Valores = trama.Split('|');
                            UsuarioNombres = Valores[0];
                            UsuarioApellidos = Valores[1];

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
                        int Estado = paquetesWS.REGISTROUSUARIO("","","", correoRegistro, "G+");

                        if (Estado == 0)
                        {
                            UsuarioCorreo = correoRegistro;
                            Response.Redirect("ActualizarInformacionAdicional.aspx");
                        }
                        if (Estado == 1)
                        {
                            UsuarioCorreo = correoRegistro;
                            string trama = paquetesWS.OBTENERNOMBREAPELLIDO(UsuarioCorreo);
                            string[] Valores = trama.Split('|');
                            UsuarioNombres = Valores[0];
                            UsuarioApellidos = Valores[1];
                            Response.Redirect("Index.aspx");
                            // Mensaje = "¡El correo de este usuario ya está registrado! Inicie sesión o registrese con otro correo.";
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