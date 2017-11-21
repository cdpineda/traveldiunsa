<%@ Page Title="" Language="C#" MasterPageFile="~/TravelSite.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="RPCorreo.aspx.cs" Inherits="TravelWebSite.RPCorreo" %>
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
                            </div>
                            <div class="col-sm-2"></div>
                            <div class="row Fondo">
                                <section id="MensajeError" runat="server" class="hide">
                                    <div class="col-sm-12">
                                        <br />
                                        <div class="form-group">
                                            <label><span style="color:red"><%= Mensaje %></span></label>
                                        </div>
                                    </div>
                                </section>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Correo Electrónico</label>
                                        <asp:TextBox ID="txtCorreo" class="form-control" placeholder="Ingrese su correo electrónico" required="" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-sm-12">
                                    <div class="col-md-6" align="center">
                                        <asp:LinkButton ID="LbSiguiente" runat="server" class="thm-btn" OnClick="Siguiente_Click">Siguiente</asp:LinkButton>
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
