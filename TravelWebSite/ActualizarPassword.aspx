<%@ Page Title="" Language="C#" MasterPageFile="~/TravelSite.Master" AutoEventWireup="true"  EnableEventValidation="false" CodeBehind="ActualizarPassword.aspx.cs" Inherits="TravelWebSite.ActualizarPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
<br />
<div>
    <section class="contact-inner">
        <div class="container">
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    <div class="contact-form">
                        <form>
                            <div class="col-sm-2"></div>
                            <div class="col-sm-8" align="center">
                                <br>
                                <img class="Logo-InicioSesion" src="assets/images/logo-traveldiunsa.png">
                                <h3>Nueva Contraseña</h3>
                            </div>
                            <div class="col-sm-2"></div>
                            <div class="row Fondo">
                                <section id="MensajeError" runat="server" class="hide">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label><span style="color:red"><%= Mensaje %></span></label>
                                        </div>
                                    </div>
                                </section>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Contraseña</label>
                                        <asp:TextBox ID="txtPassword" class="form-control" placeholder="Ingrese su nueva contraseña" required="" TextMode="Password" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Confirmar Contraseña</label>
                                        <asp:TextBox ID="txtPasswordConfirmar" class="form-control" placeholder="Confirme su nueva contraseña" required="" TextMode="Password" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="col-md-6" align="center">
                                        <asp:LinkButton ID="LbConfirmar" runat="server" class="thm-btn" OnClick="Confirmar_Click">Confirmar</asp:LinkButton>
                                    </div>
                                    <div class="col-md-6" align="center">
                                        <asp:LinkButton ID="LbCancelar" runat="server" class="thm-btn-crearcuenta" OnClick="Cancelar_Click">Cancelar</asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-sm-3"></div>
            </div>
        </div>
    </section>
</div>
</asp:Content>
