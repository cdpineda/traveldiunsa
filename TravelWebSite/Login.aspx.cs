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
        public static string UsuarioCorreo = "";
        protected void Page_Load(object sender, EventArgs e)
        {

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
    }
}