<%@ Page Title="" Language="C#" MasterPageFile="~/TravelSite.Master" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="TravelWebSite.Registrarse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <section class="contact-inner">
            <div class="container">
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-8">
                            <ul class="nav nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#Paso1">Paso 1</a></li>
                                <li><a data-toggle="tab" href="#">Paso 2</a></li>
                                <li><a data-toggle="tab" href="#">Paso 3</a></li>
                            </ul>

                            <div class="tab-content">
                                <div id="Paso1" class="tab-pane fade in active">
                                <div class="contact-form">
                                    <br>
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="form-group">
                                                    <label>Nombre de Usuario</label>
                                                    <asp:TextBox ID="TxtUser" class="form-control" placeholder="Nombre de Usuario" required="" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="form-group">
                                                    <label>Contraseña</label>
                                                    <asp:TextBox ID="TxtPassword" class="form-control" placeholder="Contraseña" required="" TextMode="Password" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="form-group">
                                                    <label>Correo Electrónico</label>
                                                    <asp:TextBox ID="TxtCorreo" class="form-control" placeholder="Ingrese su correo electrónico" required="" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="col-md-4"></div>
                                                <div class="col-md-2">
                                                    <asp:LinkButton ID="LbInsertUsuario" runat="server" class="thm-btn" OnClick="LbSubmit_Click"><strong>Registrarse</strong></asp:LinkButton>
                                                </div>
                                                <div class="col-md-4"></div>
                                            </div>
                                        </div>
                                </div>
                                </div>
                                <div id="Paso2" class="tab-pane fade">
                                <h3>Menu 1</h3>
                                <p>Some content in menu 1.</p>
                                </div>
                                <div id="Paso3" class="tab-pane fade">
                                <h3>Menu 2</h3>
                                <p>Some content in menu 2.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-2"></div>
                    </div>
                    <div class="col-sm-2"></div>
                </div>
            </div>
        </section>
    </div>
</asp:Content>
