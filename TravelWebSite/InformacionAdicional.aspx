<%@ Page Title="" Language="C#" MasterPageFile="~/TravelSite.Master" AutoEventWireup="true" CodeBehind="InformacionAdicional.aspx.cs" Inherits="TravelWebSite.InformacionAdicional" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div>
    <section class="contact-inner">
        <div class="container">
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <div class="contact-form">
                            <div align="center">
                                <h2>Completar Información Adicional</h2>
                            </div>
                            <div class="row Fondo">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Teléfono</label>
                                        <asp:TextBox ID="TxtTelefono" class="form-control" placeholder="Ingrese su número de teléfono" required="" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Celular</label>
                                        <asp:TextBox ID="TxtCelular" class="form-control" placeholder="Ingrese su número de celular" required="" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Pasaporte</label>
                                        <asp:TextBox ID="TxtPasaporte" class="form-control" placeholder="Ingrese su número de pasaporte" required="" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Fecha Vencimiento(dd/mm/yyyy)</label>
                                        <asp:TextBox ID="TxtFechaVencePasaporte" class="form-control" placeholder="Ingrese su fecha de vencimiento. dd/mm/yyyy" required="" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-6">
                                        <asp:LinkButton ID="LbInsertUsuario" runat="server" class="thm-btn" OnClick="LbSubmit_Click"><strong>Confirmar</strong></asp:LinkButton>
                                    </div>
                                    <div class="col-md-3"></div>
                                </div>
                            </div>
                    </div>
                </div>
                <div class="col-sm-4"></div>
            </div>
        </div>
    </section>
</div>
</asp:Content>
