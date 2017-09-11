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
</head>
<body>
    <form id="form1" runat="server">
         <div>
            <section class="contact-inner">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-4"></div>
                        <div class="col-sm-4">
                            <div class="contact-form">
                                <form>
                                    <div align="center">
                                        <img class="Logo-InicioSesion" src="assets/images/logo-traveldiunsa.png">
                                        <h2>Iniciar Sesión</h2>
                                    </div>
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
                                            <div class="col-md-3"></div>
                                            <div class="col-md-6">
                                                <asp:LinkButton ID="LbInsertUsuario" runat="server" class="thm-btn" OnClick="LbSubmit_Click"><strong>Iniciar</strong></asp:LinkButton>
                                            </div>
                                            <div class="col-md-3"></div>
                                        </div>
                                    </div>
                                     
                                    <div class="col-sm-12">
                                        <div class="col-md-1"></div>
                                        <div class="col-md-10">
                                            <div class="form-group">
                                                <h3>¿No estás registrado?</h3>
                                                <a href="Registrarse.aspx">Presiona aquí para registrarte</a>
                                            </div>
                                        </div>
                                        <div class="col-md-1"></div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-sm-4"></div>
                    </div>
                </div>
            </section>
        </div>
    </form>
</body>
</html>
