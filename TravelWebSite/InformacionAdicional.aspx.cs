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
        public string Nombres;
        public string Apellidos;
        public string Correo;
        public string FechaNacimiento;
        public string Ciudad;
        public string Telefono;
        public string Celular;
        public string Pasaporte;
        public string PasaporteFechaVenc;
        public string Visa;
        public string VisaFechaVenc;
        public string Trama;
        public string Nacionalidad;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
                Trama = paquetesWS.GETINFORMACIONADICIONAL((string)Session["CorreoUsuario"]);
                string[] Valores = Trama.Split('|');
                Nombres = Valores[0];
                Apellidos = Valores[1];

                if (Valores[2] != "/  /")
                {
                    FechaNacimiento = Valores[2];
                }

                Ciudad = Valores[3];
                Telefono = Valores[4];
                Celular = Valores[5];
                Pasaporte = Valores[6];
                if (Valores[7] != "/  /")
                {
                    PasaporteFechaVenc = Valores[7];
                }

                Visa = Valores[8];

                if (Valores[9] != "/  /")
                {
                    VisaFechaVenc = Valores[9];
                }

                Correo = (string)Session["CorreoUsuario"];
                Nacionalidad = Valores[10];
            }
            catch (Exception ex)
            {

            }
        }

    }
}