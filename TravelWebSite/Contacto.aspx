<%@ Page Title="" Language="C#" MasterPageFile="~/TravelSite.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="TravelWebSite.Contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Literal ID="LtContactoMain" runat="server"></asp:Literal>
    <section class="contact-inner">
                <div class="container">
                    <div class="row">
                      
                        <div class="col-sm-8">
                            <div class="contact-form">
                                <form runat="server">
                                    <h2>Contactanos!</h2>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label>Nombre</label>
                                                <%--<input id="nombre1"type="text" class="form-control" name="f_name" placeholder="Ingresa tu nombre">--%>
                                                <asp:TextBox ID="txtnombre1" type="text" class="form-control" name="f_name" placeholder="Ingresa tu nombre" runat="server"></asp:TextBox>  
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label>Apellido</label>
                                                <%--<input id="nombre2" type="text" class="form-control"  name="f_name" placeholder="Ingresa tu nombre">--%>
                                                <asp:TextBox ID="txtnombre2" type="text" class="form-control"  name="f_name" placeholder="Ingresa tu apellido" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label>Correo</label>
                                                <%--<input id="correo" type="text" class="form-control"  name="email" placeholder="Ingresa tu correo">--%>
                                                <asp:TextBox ID="txtcorreo" type="text" class="form-control"  name="email" placeholder="Ingresa tu correo" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label>Telefono</label>
                                                <%--<input id="telefono" type="text" class="form-control" name="phone" placeholder="Telefono">--%>
                                                 <asp:TextBox ID="txttelefono" type="text" class="form-control"  name="phone" placeholder="Telefono" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label></label>
                                        <%--<textarea class="form-control" id="comentario" name="message" placeholder="Tu comentario" rows="5"></textarea>--%>
                                        <asp:TextBox ID="txtcomentario" type="text" class="form-control"  name="message" placeholder="Tu comentario" Rows="5" runat="server"></asp:TextBox>
                                    </div>
                                    <%--<a href="#" class="thm-btn">Enviar</a>--%>
                                    <asp:LinkButton ID="LinkButton1" class="thm-btn" runat="server" OnClick="LbSubmit_Click">Enviar</asp:LinkButton>
                                </form>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="contact-details">
                                <h2>Detalles Contacto</h2>
                                <div class="contact-content">
                                    <h4>Horas de Operacion</h4>
                                    <p>
                                        9-5pm 
                                    </p>
                                </div>
                                <div class="contact-content">
                                    <h4>General</h4>
                                    <p>
                                        Telefono (504) 2516-5050  <br>
                                        <a href="mailto:hello@gmail.com">info@traveldiunsa.com</a>
                                    </p>
                                </div>
                                <div class="contact-content">
                                    <h4>Direccion</h4>
                                    <p>
                                       Diunsa Plaza Pedregal <br>
                                        San Pedro Sula <br>
                                        Cortes <br>
                                        Honduras
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
</asp:Content>
