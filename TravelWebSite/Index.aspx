<%@ Page Title="" Language="C#" MasterPageFile="~/TravelSite.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TravelWebSite.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="slider-wrapper">
    <div class="responisve-container">
        <div class="slider">
            <div class="fs_loader"></div>
            <div class="slide">
               <%-- <p class="uc" data-position="150,360" data-in="top" data-step="1" data-out="top" data-ease-in="easeOutBounce">Bienvenidos</p>
                <p class="slider-titele" data-position="210,200" data-in="left"  data-step="2" data-delay="100">Travel Diunsa</p>
                <p class="slider-text" data-position="270,100" data-in="bottom" data-out="right" data-step="2" data-delay="1000"> --%>                              
                <%--</p>--%>
                <%--<a href="#" class="thm-btn" data-position="370,435" data-in="bottom" data-out="right" data-step="2" data-delay="1500">Leer Mas</a>--%>
            </div>
            
        </div>
    </div>

    <!-- booking -->
    <div class="container boking-inner">
        <div class="row">
            <div class="col-sm-12">
                <div class="panel1">
                    <div class="panel1-heading">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab1default" data-toggle="tab"><i class="flaticon-paper-plane"></i>Paquetes</a></li>
                            <li><a href="#tab2default" data-toggle="tab"> <i class="flaticon-cabin"></i>Hotel</a></li>
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
                                                    <input type="text" placeholder="Fecha" class="form-control" id="datepicker1"/>
                                                    <label class="glyphicon fa fa-calendar"  title="email"></label>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-4 col-md-6 panel-padding">
                                                <label>Salida</label>
                                                <div class="icon-addon">
                                                    <input type="text" placeholder="Fecha" class="form-control" id="datepicker2"/>
                                                    <label class="glyphicon fa fa-calendar"  title="email"></label>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-4 col-md-6 hidden-sm panel-padding">
                                                <br/>
                                                <br/>
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
                                                <br/>
                                                <br/>
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
                                                <br/>
                                                <br/>
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
                                                <br/>
                                                <br/>
                                                <label>Días</label>
                                                <!-- filters select -->
                                                <div class="select-filters">
                                                    <select name="day" id="day">
                                                        <option value="" selected="">1 día</option>
                                                        <option value="2">2 días</option>
                                                        <option value="3">3 días</option>
                                                        <option value="4">4 días</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-3 col-md-4">
                                        <br/>
                                        <br/>
                                        <asp:LinkButton ID="LinkButton1" runat="server" class="thm-btn" OnClick="lbBusqueda" >BUSCAR PAQUETES</asp:LinkButton>
                                        <%--<button type="button" class="thm-btn">Búsqueda</button>--%>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="tab2default">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-9 col-md-12">
                                        <div class="row panel-margin">
                                            <div class="col-xs-6 col-sm-4 col-md-6 panel-padding">
                                                <label>Llegada</label>
                                                <div class="icon-addon">
                                                    <input type="text" placeholder="Fecha" class="form-control" id="datepicker3"/>
                                                    <label class="glyphicon fa fa-calendar"  title="email"></label>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-4 col-md-6 panel-padding">
                                                <label>Salida</label>
                                                <div class="icon-addon">
                                                    <input type="text" placeholder="Fecha" class="form-control" id="datepicker4"/>
                                                    <label class="glyphicon fa fa-calendar"  title="email"></label>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-4 col-md-6 hidden-sm panel-padding">
                                                <br/>
                                                <br/>
                                                <label>Cuartos</label>
                                                <!-- filters select -->
                                                <div class="select-filters">
                                                    <select name="room" id="room2">
                                                        <option value="" selected="">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-4 col-md-6 hidden-sm panel-padding">
                                                <br/>
                                                <br/>
                                                <label>Personas</label>
                                                <!-- filters select -->
                                                <div class="select-filters">
                                                    <select name="person" id="person2">
                                                        <option value="" selected="">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-4 col-md-2 hidden-sm panel-padding">
                                                <br/>
                                                <br/>
                                                <label>Niños</label>
                                                <!-- filters select -->
                                                <div class="select-filters">
                                                    <select name="child" id="child2">
                                                        <option value="" selected="">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-4 col-md-2 panel-padding">
                                                <br/>
                                                <br/>
                                                <label>Días</label>
                                                <!-- filters select -->
                                                <div class="select-filters">
                                                    <select name="day" id="day2">
                                                        <option value="" selected="">1 días</option>
                                                        <option value="2">2 días</option>
                                                        <option value="3">3 días</option>
                                                        <option value="4">4 días</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-3 col-md-4">
                                        <br/>
                                        <br/>
                                        <button type="button" class="thm-btn">BUSCAR HOTELES</button>
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

 

<!-- service -->
<section class="service-inner">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="col-sm-4 inner-box">
                    <article>
                        <img src="assets/images/ServicioEspecialistaViaje.png" >
                    </article>
                </div>
                <div class="col-sm-4 inner-box">
                    <article>
                         <img src="assets/images/SerivicioAsistencia.png" >
                    </article>
                </div>
                <div class="col-sm-4 inner-box">
                    <article>
                         <img src="assets/images/ServicioVaciones.png" >
                    </article>
                </div>
            </div>
        </div>
    </div>
</section>
    <asp:Literal ID="LtRecomendados" runat="server"></asp:Literal>
     <asp:Literal ID="LtBoletin" runat="server"></asp:Literal>
</asp:Content>