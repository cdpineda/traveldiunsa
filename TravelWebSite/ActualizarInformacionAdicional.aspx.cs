using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelWebSite.PaqueteWS;

namespace TravelWebSite
{
    public partial class ActualizarInformacionAdicional : System.Web.UI.Page
    {
        public string Nombres;
        public string Apellidos;
        public string Correo;
        public DateTime FechaNacimientoG;
        public string Ciudad;
        public string Telefono;
        public string Celular;
        public string Pasaporte;
        public DateTime PasaporteFechaVenc;
        public string Visa;
        public DateTime VisaFechaVenc;
        public string Mensaje;
        public string Trama;
        PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Trama = paquetesWS.GETINFORMACIONADICIONAL(Login.UsuarioCorreo);
                string[] Valores = Trama.Split('|');
                Nombres = Valores[0];
                Apellidos = Valores[1];

                if (Valores[2] != "/  /")
                {
                    FechaNacimientoG = Convert.ToDateTime(Valores[2]);
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
                LbNombres.Attributes["placeholder"] = Nombres;
                LbApellidos.Attributes["placeholder"] = Apellidos;
                LbFechaNacimiento.Attributes["placeholder"] = FechaNacimientoG.ToString();
                LbCiudadResidencia.Attributes["placeholder"] = Ciudad;
                LbTelefono.Attributes["placeholder"] = Telefono;
                LbCelular.Attributes["placeholder"] = Celular;
                LbPasaporte.Attributes["placeholder"] = Pasaporte;
                LbPasaporteFecVenc.Attributes["placeholder"] = PasaporteFechaVenc.ToString();
                LbVisa.Attributes["placeholder"] = Visa;
                LbVisaFechVenc.Attributes["placeholder"] = VisaFechaVenc.ToString();
            }
            catch (Exception ex)
            {

            }

        }

        protected void LbSubmit_Guardar(object sender, EventArgs e)
        {
            try
            {
                string vNombres = "";
                string vApellidos = "";
                string FechaNacimiento = "";
                string vCiudadResidencia = "";
                string vTelefono = "";
                string vCelular = "";
                string vPasaporte = "";
                string PasaporteFecVenc = "";
                string vVisa = "";
                string VisaFecVenc = "";
                if (LbNombres.Text == "")
                {
                    vNombres = Nombres;
                }
                else
                {
                    vNombres = LbNombres.Text;
                }

                if (LbApellidos.Text == "")
                {
                    vApellidos = Apellidos;
                }
                else
                {
                    vApellidos = LbApellidos.Text;
                }

                if (LbFechaNacimiento.Text == "")
                {
                    FechaNacimiento = FechaNacimientoG.ToString();
                }
                else
                {
                    FechaNacimiento = LbFechaNacimiento.Text;
                }

                if (LbCiudadResidencia.Text == "")
                {
                    vCiudadResidencia = Ciudad;
                }
                else
                {
                    vCiudadResidencia = LbCiudadResidencia.Text;
                }

                if (LbTelefono.Text == "")
                {
                    vTelefono = Telefono;
                }
                else
                {
                    vTelefono = LbTelefono.Text;
                }
                if (LbCelular.Text == "")
                {
                    vCelular = Celular;
                }
                else
                {
                    vCelular = LbCelular.Text;
                }
                if (LbPasaporte.Text == "")
                {
                    vPasaporte = Pasaporte;
                }
                else
                {
                    vPasaporte = LbPasaporte.Text;
                }
                if (LbPasaporteFecVenc.Text == "")
                {
                    PasaporteFecVenc = PasaporteFechaVenc.ToString();
                }
                else
                {
                    PasaporteFecVenc = LbPasaporteFecVenc.Text;
                }
                if (LbVisa.Text == "")
                {
                    vVisa = Visa;
                }
                else
                {
                    vVisa = LbVisa.Text;
                }
                if (LbVisaFechVenc.Text == "")
                {
                    VisaFecVenc = VisaFechaVenc.ToString();
                }
                else
                {
                    VisaFecVenc = LbVisaFechVenc.Text;
                }

                DateTime vFechaNacimiento = Convert.ToDateTime(FechaNacimiento);
                DateTime vPasaporteFecVenc = Convert.ToDateTime(PasaporteFecVenc);
                DateTime vVisaFecVenc = Convert.ToDateTime(VisaFecVenc);
                int Estado = paquetesWS.INFORMACIONADICIONAL(vNombres, vApellidos, Login.UsuarioCorreo, vFechaNacimiento, vCiudadResidencia, vTelefono, vCelular, vPasaporte, vPasaporteFecVenc, vVisa, vVisaFecVenc);
                Response.Redirect("InformacionAdicional.aspx");

            }
            catch (Exception ex)
            {
                Mensaje = "Formatos de fecha incorrecto. Ejemplo: Día/Mes/Año";
                MensajeError.Attributes["class"] = "show";
                LbFechaNacimiento.Focus();
            }
        }

    }
}