using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelWebSite.PaqueteWS;

namespace TravelWebSite
{
    public partial class Contacto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
            string resultado = paquetesWS.CONTACTO();
            LtContactoMain.Text = resultado;

            //string nombre1= String.Format("{0}", Request.Form["nombre1"]);
            //string nombre2 = String.Format("{0}", Request.Form["nombre2"]);
            //string correo = String.Format("{0}", Request.Form["correo"]);
            //string telefono = String.Format("{0}", Request.Form["telefono"]);
            //string comentario = String.Format("{0}", Request.Form["comentario"]);
        }

        protected void LbSubmit_Click(object sender, EventArgs e)
        {
            PaquetesPopularesWS paquetesWS = new PaquetesPopularesWS();
            string nombre1 = txtnombre1.Text;
            string nombre2 = txtnombre2.Text;
            string correo = txtcorreo.Text;
            string telefono = txttelefono.Text;
            string comentario = txtcomentario.Text;
            try
            {
                paquetesWS.CONTACTOALMACENAR(nombre1, nombre2, correo, telefono, comentario);
                nombre1 = "";
                nombre2 = "";
                correo = "";
                telefono = "";
                comentario = "";
            }
            catch (Exception)
            {

                throw;
            }
           
        }

        }
}