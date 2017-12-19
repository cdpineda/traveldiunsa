<%@ Page Title="" Language="C#" MasterPageFile="~/TravelSite.Master" AutoEventWireup="true" CodeBehind="Busqueda.aspx.cs" Inherits="TravelWebSite.Busqueda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="hotel-inner">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="tools-ber">
                        <div class="row">
                            <div class="col-sm-3 col-md-3 hidden-xs">
                                <div class="input-group custom-search">
                                   <%-- <input type="text" class="form-control" placeholder="Búsqueda" />
                                    <span class="input-group-btn">
                                        <button class="btn hotel-search" type="button">
                                            <span class="fa fa-search"></span>
                                        </button>
                                    </span>--%>
                                </div>
                             <asp:Label ID="lblOpcion" runat="server" Text="Label" Style="display: none;">4</asp:Label>  <!-- label de control-->
                            </div>
                            <div class="col-xs-6 col-sm-3 col-md-2">
                                <!-- filters select -->
                               <%-- <div class="select-filters">
                                    <select name="sort_price" id="sort-price">
                                        <option value="" selected="">Ordenar por precio</option>
                                        <option value="lower">Precio mas alto</option>
                                        <option value="higher">Precio mas bajo</option>
                                    </select>
                                </div>--%>
                            </div>
                            <div class="col-xs-6 col-sm-3 col-md-2">
                                <!-- filters select -->
                           <%--     <div class="select-filters">
                                    <select name="sort_price" id="sort-rank">
                                        <option value="" selected="">Ordenar</option>
                                        <option value="lower">Rank one</option>
                                        <option value="higher">Rank one</option>
                                    </select>
                                </div>--%>
                            </div>
                            <div class="col-sm-3 col-md-5 hidden-xs text-right">
                                
                                <a id="EstiloGrid" href="#" class="filters-btn"><i class="flaticon-squares-gallery-grid-layout-interface-symbol"></i></a>
                                <a id="EstiloLista"href="#" class="filters-btn"><i class="flaticon-bulleted-list"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
              
                <!-- sideber -->
                <div class="col-sm-4 col-md-3">
                    <!-- price pips -->
                    <div class="sidber-box cats-price">
                        <div class="cats-title">
                            Precio
                        </div>
                        <div class="price-Pips">
                            <input type="text" id="range" value="range" name="range" />
                        </div>
                    </div>
                 
                    <!-- help center -->
                    <div class="sidber-box help-widget">
                        <i class="flaticon-photographer-with-cap-and-glasses"></i>
                        <h4>Necesitas <span>ayuda?</span></h4>
                        <a href="#" class="phone">(504) 2516-5050</a>
                        <small>Lunes a Viernes 9.00am - 6.30pm</small>
                    </div>
                </div><!--End Sideber-->

                <asp:Literal ID="LitBusqueda" runat="server"></asp:Literal>

            </div>
        </div>
    </section>
    <div class="modal"></div>
    <!-- jQuery -->
<script src="assets/js/jquery.min.js" type="text/javascript"></script>
<!-- jquery ui js -->
<script src="assets/js/jquery-ui.min.js" type="text/javascript"></script>
    <!-- range slider -->
<script src="assets/js/ion.rangeSlider.min.js" type="text/javascript"></script>
<script src="assets/js/jquery.easing.min.js" type="text/javascript"></script>
    <script>     
        $(document).ready(function () {
        $body = $("body");
        console.log($body);
        $(document).on({
            ajaxStart: function () { $body.addClass("loading"); console.log("ajaxstart"); },
            ajaxStop: function () { $body.removeClass("loading"); console.log("ajaxStop"); }

        });
        var webMethod = "Busqueda.aspx/getBusquedaResult";
        var valor = 0;
        $(function () {
            var opcion = 1;            
            var parameters = '{opcion:"' + opcion + '",valor:"'+valor+'"}';
                $('#EstiloLista').click(function () {
                    $.ajax({
                        type: 'POST',                        
                        url: webMethod,
                        data: parameters,
                        //async: false,
                        dataType: 'json',
                        crossDomain: true,
                        contentType: 'application/json; charset=utf-8',
                        success: function (response) {                            
                            console.log(response);
                            $body.removeClass("loading"); console.log("remover clase object empty");
                            $("#ListaPaquete").replaceWith(response.d);
                            $("#<%=lblOpcion.ClientID %>").empty();
                            $("#<%=lblOpcion.ClientID %>").text(opcion);
                        },
                        error: function (request, textStatus, errorThrown) {
                            console.log(request.responseText);
                            console.log(textStatus);
                            console.log(errorThrown);
                        }
                    });
                });
            });
        $(function () {
            var opcion = 2;            
            var parameters = '{opcion:"' + opcion + '",valor:"' + valor + '"}';
                $('#EstiloGrid').click(function () {
                    $.ajax({
                        type: 'POST',
                        url: webMethod,
                        data: parameters,
                        //async: false,
                        dataType: 'json',
                        crossDomain: true,
                        contentType: 'application/json; charset=utf-8',
                        success: function (response) {
                            console.log(response);
                            $body.removeClass("loading"); console.log("remover clase object empty");
                            $("#ListaPaquete").replaceWith(response.d);
                            $("#<%=lblOpcion.ClientID %>").empty();
                            $("#<%=lblOpcion.ClientID %>").text(opcion);
                        },
                        error: function (request, textStatus, errorThrown) {
                            console.log(request.responseText);
                            console.log(textStatus);
                            console.log(errorThrown);
                        }
                    });
                });
            });
            //range slide
            $("#range").ionRangeSlider({
                grid: true,
                min: 0,
                max: 1400,
                from: 200,
                step: 100,
                prettify_enabled: true,
                prefix: "$",
                prettify_separator: "."
            });
        //range slide on change
            $("#range").on("change", function () {
                var $this = $(this),
                    value = $this.prop("value");
                console.log("Value: " + value);
                var opcion = $("#<%=lblOpcion.ClientID %>").text();
                console.log("opcion " + opcion);
                if (opcion == 1)
                {
                    opcion = 4;
                } else if(opcion==2) {
                    opcion = 3;
                }
                console.log("opcion cambio " + opcion);
                valor = value;
                var parameters = '{opcion:"' + opcion + '",valor:"' + value + '"}';
                
                 $.ajax({
                        type: 'POST',                        
                        url: webMethod,
                        data: parameters,
                        //async: false,
                        dataType: 'json',
                        crossDomain: true,
                        contentType: 'application/json; charset=utf-8',
                        success: function (response) {                            
                            console.log(response);
                            $body.removeClass("loading"); console.log("remover clase object empty");
                            $("#ListaPaquete").replaceWith(response.d);
                            $("#<%=lblOpcion.ClientID %>").empty();
                            $("#<%=lblOpcion.ClientID %>").text(opcion);
                        },
                        error: function (request, textStatus, errorThrown) {
                            console.log(request.responseText);
                            console.log(textStatus);
                            console.log(errorThrown);
                        }
                    });

            });
        });
     </script>
    <%--http://ionden.com/a/plugins/ion.rangeSlider/en.html--%>
</asp:Content>
