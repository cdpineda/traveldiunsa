<%@ Page Title="" Language="C#" MasterPageFile="~/TravelSite.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TravelWebSite.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="slider-wrapper">
    <div class="responisve-container">
        <div class="slider">
            <div class="fs_loader"></div>
            <div class="slide">
                <p class="uc" data-position="150,360" data-in="top" data-step="1" data-out="top" data-ease-in="easeOutBounce">Bienvenidos</p>
                <p class="slider-titele" data-position="210,200" data-in="left"  data-step="2" data-delay="100">Travel Diunsa</p>
                <p class="slider-text" data-position="270,100" data-in="bottom" data-out="right" data-step="2" data-delay="1000">                               
                </p>
                <a href="#" class="thm-btn" data-position="370,435" data-in="bottom" data-out="right" data-step="2" data-delay="1500">Leer Mas</a>
            </div>
            <div class="slide">
                <p class="uc" data-position="150,360" data-in="top" data-step="1" data-out="top">Bienvenido </p>
                <p class="slider-titele" data-position="210,200" data-in="bottom"  data-step="2" data-delay="100">Travel Diunsa</p>
                <p class="slider-text" data-position="270,100" data-in="bottom" data-out="right" data-step="2" data-delay="1000">
                               
                </p>
                <a href="#" class="thm-btn" data-position="370,435" data-in="bottom" data-out="right" data-step="2" data-delay="1500">Leer Mas</a>
            </div>
        </div>
    </div>
</div>

<!-- booking -->
<div class="container boking-inner">
    <div class="row">
        <div class="col-sm-12">
            <div class="panel">
                <div class="panel-heading">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab1default" data-toggle="tab"><i class="flaticon-paper-plane"></i>Tour</a></li>
                        <li><a href="#tab2default" data-toggle="tab"> <i class="flaticon-cabin"></i>Hotel</a></li>
                    </ul>
                </div>
                <div class="panel-body">
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="tab1default">
                            <div class="row">
                                <div class="col-xs-12 col-sm-9 col-md-10">
                                    <div class="row panel-margin">
                                        <div class="col-xs-6 col-sm-4 col-md-2 panel-padding">
                                            <label>Llegada</label>
                                            <div class="icon-addon">
                                                <input type="text" placeholder="Fecha" class="form-control" id="datepicker1"/>
                                                <label class="glyphicon fa fa-calendar"  title="email"></label>
                                            </div>
                                        </div>
                                        <div class="col-xs-6 col-sm-4 col-md-2 panel-padding">
                                            <label>Salida</label>
                                            <div class="icon-addon">
                                                <input type="text" placeholder="Fecha" class="form-control" id="datepicker2"/>
                                                <label class="glyphicon fa fa-calendar"  title="email"></label>
                                            </div>
                                        </div>
                                        <div class="col-xs-6 col-sm-4 col-md-2 hidden-sm panel-padding">
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
                                        <div class="col-xs-6 col-sm-4 col-md-2 hidden-sm panel-padding">
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
                                <div class="col-xs-12 col-sm-3 col-md-2">
                                    <button type="button" class="thm-btn">Búsqueda</button>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="tab2default">
                            <div class="row">
                                <div class="col-xs-12 col-sm-9 col-md-10">
                                    <div class="row panel-margin">
                                        <div class="col-xs-6 col-sm-4 col-md-2 panel-padding">
                                            <label>Llegada</label>
                                            <div class="icon-addon">
                                                <input type="text" placeholder="Fecha" class="form-control" id="datepicker3"/>
                                                <label class="glyphicon fa fa-calendar"  title="email"></label>
                                            </div>
                                        </div>
                                        <div class="col-xs-6 col-sm-4 col-md-2 panel-padding">
                                            <label>Salida</label>
                                            <div class="icon-addon">
                                                <input type="text" placeholder="Fecha" class="form-control" id="datepicker4"/>
                                                <label class="glyphicon fa fa-calendar"  title="email"></label>
                                            </div>
                                        </div>
                                        <div class="col-xs-6 col-sm-4 col-md-2 hidden-sm panel-padding">
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
                                        <div class="col-xs-6 col-sm-4 col-md-2 hidden-sm panel-padding">
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
                                <div class="col-xs-12 col-sm-3 col-md-2">
                                    <button type="button" class="thm-btn">Búsqueda</button>
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
            <div class="col-md-6 col-md-offset-3">
                <div class="title">
                    <h2> Servicios</h2>
                    <p>Travel Diunsa!</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="col-sm-3 inner-box">
                    <article>
                        <div class="icon"><span class="flaticon-placeholder"></span></div>
                        <div class="content-text">
                            <h5> Destinos</h5>
                            <p></p>
                        </div>
                    </article>
                </div>
                <div class="col-sm-3 inner-box">
                    <article>
                        <div class="icon"><span class="flaticon-map"></span></div>
                        <div class="content-text">
                            <h5>Rapido</h5>
                            <p></p>
                        </div>
                    </article>
                </div>
                <div class="col-sm-3 inner-box">
                    <article>
                        <div class="icon"><span class="flaticon-lemonade"></span></div>
                        <div class="content-text">
                            <h5>Bebidas</h5>
                            <p></p>
                        </div>
                    </article>
                </div>
                <div class="col-sm-3 inner-box">
                    <article>
                        <div class="icon"><span class="flaticon-party"></span></div>
                        <div class="content-text">
                            <h5>Fiestas</h5>
                            <p></p>
                        </div>
                    </article>
                </div>
            </div>
        </div>
    </div>
</section>
</asp:Content>