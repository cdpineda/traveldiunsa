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
        //public static string Nombres;
        public string Apellidos;
        public string Correo;
        public DateTime FechaNacimiento;
        public string Ciudad;
        public string Telefono;
        public string Celular;
        public string Pasaporte;
        public DateTime PasaporteFechaVenc;
        public string Visa;
        public DateTime VisaFechaVenc;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
                paquetesWS.OBTNERINFORMACIONADICIONAL(Login.UsuarioCorreo,out(FechaNacimiento),out(Ciudad),out(Telefono),out(Celular),out(Pasaporte),out(PasaporteFechaVenc),out(Visa),out(VisaFechaVenc));
                Correo = Login.UsuarioCorreo;
            }
            catch(Exception ex)
            {

            }
        }
        
    }
}