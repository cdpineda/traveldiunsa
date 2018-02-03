<%@ Page Title="" Language="C#" MasterPageFile="~/TravelSite.Master" AutoEventWireup="true" EnableEventValidation="false"  CodeBehind="Preguntas.aspx.cs" Inherits="TravelWebSite.Preguntas" %>

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
                                <h3>Preguntas de Seguridad</h3>
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
                                        <asp:dropdownlist id ="ddlComputedColumns" class="comboBox" runat ="server"></asp:dropdownlist >
                                        <asp:TextBox ID="txtRespuesta1" class="form-control" placeholder="Ingrese su respuesta" required="" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <asp:dropdownlist id ="ddlComputedColumns2" class="comboBox" runat ="server"></asp:dropdownlist >
                                        <asp:TextBox ID="txtRespuesta2" class="form-control" placeholder="Ingrese su respuesta" required="" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="col-md-2"></div>
                                    <div class="col-md-8" align="center"><asp:LinkButton ID="LbFinalizar" runat="server" class="thm-btn" OnClick="Finalizar_Click">Finalizar</asp:LinkButton></div>
                                    <div class="col-md-2"></div>
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
