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
        public DateTime FechaNacimiento;
        public string Ciudad;
        public string Telefono;
        public string Celular;
        public string Pasaporte;
        public DateTime PasaporteFechaVenc;
        public string Visa;
        public DateTime VisaFechaVenc;
        public string Trama;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
                Trama = paquetesWS.GETINFORMACIONADICIONAL(Login.UsuarioCorreo);
                string[] Valores = Trama.Split('|');
                Nombres = Valores[0];
                Apellidos = Valores[1];

                if (Valores[2] != "/  /")
                {
                    FechaNacimiento = Convert.ToDateTime(Valores[2]);
                }

                Ciudad = Valores[3];
                Telefono = Valores[4];
                Celular = Valores[5];
                Pasaporte = Valores[6];
                if (Valores[7] != "/  /")
                {
                    PasaporteFechaVenc = Convert.ToDateTime(Valores[7]);
                }

                Visa = Valores[8];

                if (Valores[9] != "/  /")
                {
                    VisaFechaVenc = Convert.ToDateTime(Valores[9]);
                }

                Correo = Login.UsuarioCorreo;
            }
            catch (Exception ex)
            {

            }
        }

    }
}