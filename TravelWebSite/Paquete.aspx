<%@ Page Title="" Language="C#" MasterPageFile="~/TravelSite.Master" AutoEventWireup="true" CodeBehind="Paquete.aspx.cs" Inherits="TravelWebSite.Paquete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 

                   
    <asp:Literal ID="LtDetallePaquete" runat="server"></asp:Literal>
    <!-- boletin suscripción -->
    <asp:Literal ID="LtBoletin" runat="server"></asp:Literal>
    <asp:Label ID="lblLat1" runat="server" Text="Label" Style="display: none;"></asp:Label>
    <asp:Label ID="lblLat2" runat="server" Text="Label" Style="display: none;"></asp:Label>
    <!-- google maps -->
 <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA2ZKLv37_TtWKfPXcT5OcDotXT0KhqY08"></script>
            <script type="text/javascript">
                var Latitude1 = document.getElementById('<%=lblLat1.ClientID%>').innerText;
                var Latitude2 = document.getElementById('<%=lblLat2.ClientID%>').innerText;

            // When the window has finished loading create our google map below
            google.maps.event.addDomListener(window, 'load', init);

            function init() {
                // Basic options for a simple Google Map
                // For more options see: https://developers.google.com/maps/documentation/javascript/reference#MapOptions
                var mapOptions = {
                    // How zoomed in you want the map to start at (always required)
                    zoom: 10, scrollwheel: false,
                    // The latitude and longitude to center the map (always required)
                    //center: new google.maps.LatLng(16.283892297211715, -86.59149169921875), //ROA
                    center: new google.maps.LatLng(Latitude1, Latitude2),
                    // How you would like to style the map. 
                    // This is where you would paste any style found on Snazzy Maps.
                    //styles: [{"featureType": "administrative", "elementType": "labels.text.fill", "stylers": [{"color": "#444444"}]}, {"featureType": "administrative.locality", "elementType": "labels.text.stroke", "stylers": [{"visibility": "on"}]}, {"featureType": "administrative.locality", "elementType": "labels.icon", "stylers": [{"visibility": "on"}, {"color": "#f1c40f"}]}, {"featureType": "landscape", "elementType": "all", "stylers": [{"color": "#f2f2f2"}]}, {"featureType": "poi", "elementType": "all", "stylers": [{"visibility": "off"}]}, {"featureType": "road", "elementType": "all", "stylers": [{"saturation": -100}, {"lightness": 45}]}, {"featureType": "road.highway", "elementType": "all", "stylers": [{"visibility": "simplified"}]}, {"featureType": "road.arterial", "elementType": "labels.icon", "stylers": [{"visibility": "off"}]}, {"featureType": "transit", "elementType": "all", "stylers": [{"visibility": "off"}]}, {"featureType": "water", "elementType": "all", "stylers": [{"color": "#fec107"}, {"visibility": "on"}]}]
                };

                // image from external URL

                var myIcon = 'assets/images/marker.png';

                //preparing the image so it can be used as a marker
                //https://developers.google.com/maps/documentation/javascript/reference#Icon
                //includes hacky fix "size" to allow for wobble
                var catIcon = {
                    url: myIcon,
                };

                // Get the HTML DOM element that will contain your map 
                // We are using a div with id="map" seen below in the <body>
                var mapElement = document.getElementById('map');

                // Create the Google Map using our element and options defined above
                var map = new google.maps.Map(mapElement, mapOptions);

                // Let's also add a marker while we're at it
                var marker = new google.maps.Marker({
                    position: new google.maps.LatLng(16.283892297211715, -86.59149169921875), //ROA
                    map: map,
                    icon: catIcon,
                    title: 'Snazzy!',
                    animation: google.maps.Animation.DROP,
                });
            }
        </script>
       
</asp:Content>
