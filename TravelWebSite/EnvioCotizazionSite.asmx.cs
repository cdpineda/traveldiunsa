using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Net.Mail;
using System.Net;
using System.Text;
using System.Net.Mime;
using System.IO;
namespace TravelWebSite
{
    /// <summary>
    /// Summary description for EnvioCotizazionSite
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class EnvioCotizazionSite : System.Web.Services.WebService
    {

        [WebMethod]
        public string EnviarCorreoSite(string Destinatario, string Cuerpo1, string paquete)
        //public static string EnvioCorreo()
        {
            string respuesta, UsuarioCorreo, NombreRemitente, PassCorreo, CopiaCorreo, Sujeto, Cuerpo, AttachmentPath, host;
            UsuarioCorreo = "viajes@traveldiunsa.com";
            NombreRemitente = "TravelDiunsa";
            PassCorreo = "9173*!poN5sr";            
            string Destinatario2 = "cesardaniel_hotmail.com";
            CopiaCorreo = "cesardaniel.pineda@gmail.com";
            Sujeto = "Cotización Paquete";
            
            //AttachmentPath="C:/inetpub/wwwroot/web/1.png";
            AttachmentPath = "";
            host = "smtp.office365.com";
            int _enablessl = 1;
            int _Html = 1;
            int puerto = 587;
            Cuerpo = Cuerpo1;
            String url = "http://67.227.155.88/travelwebsite/cotizar?id=" + paquete.Trim(); ;
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            StreamReader sr = new StreamReader(response.GetResponseStream());
            Cuerpo += sr.ReadToEnd();
            sr.Close();

            respuesta = "";
            bool Html = false;
            bool enablessl = false;
            if (_Html == 1)
                Html = true;
            if (_enablessl == 1)
                enablessl = true;

            try
            {
                if (AttachmentPath == "")
                {
                    new SmtpClient
                    {
                        Host = host,//"Smtp.Gmail.com",
                        Port = puerto,//587,
                        EnableSsl = enablessl,//true,
                        Timeout = 10000,
                        DeliveryMethod = SmtpDeliveryMethod.Network,
                        UseDefaultCredentials = false,
                        Credentials = new NetworkCredential(UsuarioCorreo, PassCorreo)
                    }.Send(new MailMessage { From = new MailAddress(UsuarioCorreo, NombreRemitente), To = { Destinatario2 }, CC = { CopiaCorreo }, Subject = Sujeto, Body = Cuerpo, BodyEncoding = Encoding.UTF8, IsBodyHtml = Html });
                    //respuesta = "Email has been sent successfully.";
                    respuesta = "El correo ha sido enviado";
                }
                else
                {
                    Attachment data = new Attachment(AttachmentPath, MediaTypeNames.Application.Octet);
                    new SmtpClient
                    {
                        Host = host,//"Smtp.Gmail.com",
                        Port = puerto,//587,
                        EnableSsl = enablessl,//true,
                        Timeout = 10000,
                        DeliveryMethod = SmtpDeliveryMethod.Network,
                        UseDefaultCredentials = false,
                        Credentials = new NetworkCredential(UsuarioCorreo, PassCorreo)
                    }.Send(new MailMessage { From = new MailAddress(UsuarioCorreo, NombreRemitente), To = { Destinatario2 }, CC = { CopiaCorreo }, Subject = Sujeto, Body = Cuerpo, BodyEncoding = Encoding.UTF8, IsBodyHtml = Html, Attachments = { data } });
                    //respuesta = "Email has been sent successfully.";
                    respuesta = "El correo ha sido enviado";
                };


            }
            catch (Exception ex)
            {
                respuesta = ex.ToString();

            }
            return respuesta;
        }
    }
}
