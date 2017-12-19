<%@ Page Title="" Language="C#" MasterPageFile="~/TravelSite.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Index.aspx.cs" Inherits="TravelWebSite.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="slider-wrapper">
        <!-- booking -->
        <div class="container boking-inner">
            <div class="row">
                <div class="col-sm-5">
                    <div class="panel1">
                        <div class="panel1-heading">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#tab1default" data-toggle="tab"><i class="flaticon-paper-plane"></i>Paquetes</a></li>                                                                                              
                            </ul>
                        </div>
                        <div class="panel1-body">
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="tab1default">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-9 col-md-12">
                                            <div class="row panel-margin">
                                                <div class="col-xs-6 col-sm-4 col-md-6 panel-padding">
                                                    <label>Llegada</label>
                                                    <div class="icon-addon">
                                                        <input type="text" placeholder="Fecha" class="form-control" id="datepicker1" />
                                                        <label class="glyphicon fa fa-calendar" title="email"></label>
                                                    </div>
                                                </div>
                                                <div class="col-xs-6 col-sm-4 col-md-6 panel-padding">
                                                    <label>Salida</label>
                                                    <div class="icon-addon">
                                                        <input type="text" placeholder="Fecha" class="form-control" id="datepicker2" />
                                                        <label class="glyphicon fa fa-calendar" title="email"></label>
                                                    </div>
                                                </div>
                                                <div class="col-xs-6 col-sm-4 col-md-6 hidden-sm panel-padding">
                                                    <br />
                                                    <label>Cuartos</label>
                                                    <!-- filters select -->
                                                    <div class="select-filters">
                                                        <select name="room" id="room">
                                                            <option value="" selected="">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-xs-6 col-sm-4 col-md-6 hidden-sm panel-padding">
                                                    <br />
                                                    <label>Personas</label>
                                                    <!-- filters select -->
                                                    <div class="select-filters">
                                                        <select name="person" id="person">
                                                            <option value="" selected="">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-xs-6 col-sm-4 col-md-2 hidden-sm panel-padding">
                                                    <br />
                                                    <label>Niños</label>
                                                    <!-- filters select -->
                                                    <div class="select-filters">
                                                        <select name="child" id="child">
                                                            <option value="" selected="">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-xs-6 col-sm-4 col-md-2 panel-padding">
                                                    <br />
                                                    <label>Días</label>
                                                    <!-- filters select -->
                                                    <div class="select-filters">
                                                        <select name="day" id="day">
                                                            <option value="" selected="">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-sm-7 col-md-7">
                                            <br />
                                            <a href="Busqueda.aspx" class="thm-btn">BUSCAR PAQUETES</a>
                                            <%--<asp:LinkButton ID="LinkButton1" runat="server" class="thm-btn" OnClick="lbBusqueda" >BUSCAR PAQUETES</asp:LinkButton>--%>
                                            <%--<button type="button" class="thm-btn">Búsqueda</button>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <%-- Paquete Popular --%>
    <asp:Literal ID="LtPaquetePopular" runat="server"></asp:Literal>
    <%-- Destino Popular --%>
    <asp:Literal ID="LtDestinoPopular" runat="server"></asp:Literal>

    <%-- Catalagos --%>
    <asp:Literal ID="LtCatalogos" runat="server"></asp:Literal>
    <%-- DestinoPaquete --%>
    <asp:Literal ID="LtDestino" runat="server"></asp:Literal>


    <!-- service -->
    <section class="service-inner">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-4 inner-box">
                        <article>
                            <img src="assets/images/ServicioEspecialistaViaje.png">
                        </article>
                    </div>
                    <div class="col-sm-4 inner-box">
                        <article>
                            <img src="assets/images/SerivicioAsistencia.png">
                        </article>
                    </div>
                    <div class="col-sm-4 inner-box">
                        <article>
                            <img src="assets/images/ServicioVaciones.png">
                        </article>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <asp:Literal ID="LtRecomendados" runat="server"></asp:Literal>
    <asp:Literal ID="LtBoletin" runat="server"></asp:Literal>





</asp:Content>

