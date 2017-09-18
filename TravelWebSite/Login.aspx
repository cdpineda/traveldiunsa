<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Login.aspx.cs" Inherits="TravelWebSite.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Iniciar Sesión</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="assets/images/favicon.png" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="assets/images/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="assets/images/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="assets/images/apple-touch-icon-114x114-precomposed.png">
    <!-- Base Css -->
    <link href="assets/css/base.css" rel="stylesheet" type="text/css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://apis.google.com/js/client:plusone.js"></script> <!-- Cargar Google Api -->
    
</head>

<body> 
    <form id="form1" runat="server">
         <div>
            <section class="contact-inner">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-6">
                            <div class="contact-form">
                                <form>
                                    <div class="col-sm-2"></div>
                                    <div class="col-sm-8">
                                        <br>
                                        <div align="center">
                                            <img class="Logo-InicioSesion" src="assets/images/logo-traveldiunsa.png">
                                            <h2>Iniciar Sesión</h2>
                                        </div>
                                    </div>
                                    <div class="col-sm-2"></div>
                                    <div class="row Fondo">
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>Correo Electrónico</label>
                                                <asp:TextBox ID="TxtCorreo" class="form-control" placeholder="Ingrese su correo electrónico" required="" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>Contraseña</label>
                                                <asp:TextBox ID="TxtPassword" class="form-control" placeholder="Contraseña" required="" TextMode="Password" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="col-md-6" align="center">
                                                <asp:LinkButton ID="LbIniciarSesion" runat="server" class="thm-btn" OnClick="LbSubmit_Click"><strong>Iniciar Sesión</strong></asp:LinkButton>
                                            </div>
                                            <div class="col-md-6" align="center">
                                                <asp:LinkButton ID="LbRegistrarse" runat="server" class="thm-btn-register" OnClick="LbSubmit_ClickRegistrar"><strong>Crear Cuenta Gratis</strong></asp:LinkButton>
                                            </div>
                                        </div>

                                        <div class="col-sm-12" align="center"><br /></div>
                                        <!--Botones Redes Sociales-->
                                            <div class="col-sm-12" align="center">
                                                <br />
                                                <div>Iniciar sesión con:</div>
                                                <br />
                                                <div class="col-md-6" align="center">
                                                    <fb:login-button  scope="public_profile,email" onlogin="checkLoginState();"></fb:login-button>
                                                </div>
                                                <div class="col-md-6" align="center">
                                                    <div id="signin-button">
                                                    <div class="g-signin" data-callback="GoogleLogin" data-approvalprompt="force" data-clientid="252878396294-n1667v675ss8e7i7e041ets5sop8adqn.apps.googleusercontent.com" data-scope="https://www.googleapis.com/auth/plus.login https://www.googleapis.com/auth/plus.profile.emails.read" data-cookiepolicy="single_host_origin"></div>
                                                    </div>
                                                </div>
                                                
                                            <!--<div class="fb-login-button" data-max-rows="1" data-size="medium" data-button-type="login_with" data-show-faces="false" data-auto-logout-link="false" data-use-continue-as="false" onclick="checkLoginState()" ></div>-->
                                                
                                                
                                            </div>
                                        <!-- Capturar información javascritp a asp.net -->
                                        <asp:HiddenField ID="CorreoFBASP" runat="server" />
                                        <asp:HiddenField ID="NombreFBASP" runat="server" />
                                        <asp:HiddenField ID="CorreoGmailASP" runat="server" />
                                        <asp:HiddenField ID="NombreGmailASP" runat="server" />
                                    </div>

                                   
                                </form>
                            </div>
                        </div>
                        <div class="col-sm-3"></div>
                    </div>
                </div>
            </section>
        </div>
    </form>
<script>
    // This is called with the results from from FB.getLoginStatus().
    function statusChangeCallback(response) {
    console.log('statusChangeCallback');
    console.log(response);
    if (response.status === 'connected') {
        // Logged into your app and Facebook
        testAPI();
        
    }
  }

  // This function is called when someone finishes with the Login
  // Button.  See the onlogin handler attached to it in the sample
  // code below.
  function checkLoginState() {
    FB.getLoginStatus(function(response) {
      statusChangeCallback(response);
    });
  }

  window.fbAsyncInit = function() {
  FB.init({
    appId      : '478066139225612',
    cookie     : true,  // enable cookies to allow the server to access 
                        // the session
    xfbml      : true,  // parse social plugins on this page
    version    : 'v2.8' // use graph api version 2.8
  });

  // Now that we've initialized the JavaScript SDK, we call 
  // FB.getLoginStatus().  This function gets the state of the
  // person visiting this page and can return one of three states to
  // the callback you provide.  They can be:
  //
  // 1. Logged into your app ('connected')
  // 2. Logged into Facebook, but not your app ('not_authorized')
  // 3. Not logged into Facebook and can't tell if they are logged into
  //    your app or not.
  //
  // These three cases are handled in the callback function.

  };


  // Load the SDK asynchronously
  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "https://connect.facebook.net/es_ES/sdk.js#xfbml=1&version=v2.10&appId=478066139225612";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));

  // Here we run a very simple test of the Graph API after login is
  // successful.  See statusChangeCallback() for when this call is made.
  function testAPI() {
    FB.api('/me?fields=id,name,email,permissions', function(response) {
      document.getElementById("<%=CorreoFBASP.ClientID%>").value = response.email;
      document.getElementById("<%=NombreFBASP.ClientID%>").value = response.name;
      // Registramos al usuario
        __doPostBack('RegistrarFB','')
    },
    {scope:'email'});
  }

  function logout() {
        FB.logout(function (response) {
            // user is now logged out
        });
    }
</script>
    

<!-- Google + -->
<script>
    function GoogleLogin(respuesta)
    {
        if(respuesta["status"]["signed_in"])
        {       
            gapi.client.load("plus","v1",function(){
                var request=gapi.client.plus.people.get({"userId":"me"}).execute(function(info){
                    $("Nombre").html(info.displayName);
                    $("#URL").html(info.url);
                    document.getElementById("<%=NombreGmailASP.ClientID%>").value = info.displayName;
                    apiClientLoaded()
                });
            });
        }
    }

    function apiClientLoaded() {
        gapi.client.plus.people.get({ userId: 'me' }).execute(handleEmailResponse);
    }

    /**
     * Response callback for when the API client receives a response.
     *
     * @param resp The API response object with the user email and profile information.
     */
    function handleEmailResponse(resp) {
        var primaryEmail;
        for (var i = 0; i < resp.emails.length; i++) {
            if (resp.emails[i].type === 'account') primaryEmail = resp.emails[i].value;
        }
        document.getElementById("<%=CorreoGmailASP.ClientID%>").value = primaryEmail;
        // Registramos al usuario
        __doPostBack('RegistrarGM', '');
    }

</script>
</body>
</html>
