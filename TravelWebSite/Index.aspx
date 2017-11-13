<%@ Page Title="" Language="C#" MasterPageFile="~/TravelSite.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Index.aspx.cs" Inherits="TravelWebSite.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="slider-wrapper">
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
	                                    <form action="https://reservaciones.travelint.net/boxtravelnet/hotels" method="post" enctype="multipart/form-data" name="formHoteles" id="formHoteles">
			                                <input type="hidden" value="2cf87f87ff68ed23ac66a8c691e19632" name="id">
			                                <input type="hidden" name="language" value="es"/> <!-- lenguaje of system "es" "en" -->
			                                <input type="hidden" name="c" value="USD"/> <!-- "MXN" "USD" -->
			                                <input type="hidden" id="limit" value="20"/> <!-- "0"-"100" -->
			                                <input type="hidden" id="lang" value="es"/> <!-- lenguaje of autocomplete "es" "en" -->
			                                <input type="hidden" id="searchingLabel" value="Espere un momento..."/> <!-- Label for sumiting --> 
			                                <input type="hidden" id="searchingImg" value="assets/css/images/th_searching.gif"/> <!-- Image for sumiting --> 
			                                <img src="css/material/th_searching.gif" style="display: none;">
			
				                               

                                                <div class="col-xs-6 col-sm-4 col-md-6 panel-padding">
                                                    <label>Destino</label>
                                                    <input id="destino" class="form-control" name="d" value="Buscar Destino..." autocomplete="off">
                                                    <div class="icon-addon">
                                                         <div class="txtwarning" id="warningDest">Selecciona un Destino</div>
                                                        <input id="citycode" name="dc" type="hidden"  autocomplete="off"/>
                                                    </div>
                                                </div>
				                               
				                                <div class="col-xs-6 col-sm-4 col-md-6 panel-padding">
                                                    <label>Nombre del Hotel (Opcional) :</label>
                                                        <input id="nh" name="nh" type="text" class="form-control" autocomplete="off"/>
                                                </div>
                                                
                                                <div class="col-xs-12 col-sm-9 col-md-12 panel-padding">
                                                    <br/>
                                                    <br/>
                                                    <label>Llegada</label>
                                                    <div class="icon-addon">
                                                        <input name="sd" type="text" class="form-control" id="startDate"/>
                                                        <label  class="glyphicon fa fa-calendar"  title="email"></label>
                                                        <div class="txtwarning" id="warning">Selecciona un día de entrada</div>
                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-9 col-md-12 panel-padding">
                                                    <br/>
                                                    <br/>
                                                    <label>Salida</label>
                                                    <div class="icon-addon">
                                                        <input name="ed" type="text" class="form-control" id="endDate"/>
                                                        <label  class="glyphicon fa fa-calendar"  title="email"></label>
                                                    </div>
                                                </div>

                                                 <div class="col-xs-6 col-sm-4 col-md-6 hidden-sm panel-padding">
                                                    <br/>
                                                    <br/>
                                                    <label>Cuartos</label>
                                                    <!-- filters select -->
                                                    <div class="select-filters">
                                                            <select name="room" id="rooms">
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
			                                <button id="ver_precios" class="thm-btn" >Ver Precios</button>
		                                </div>
                                            
	                                </form>
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