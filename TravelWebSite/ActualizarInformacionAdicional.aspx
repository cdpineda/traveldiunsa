<%@ Page Title="" Language="C#" MasterPageFile="~/TravelSite.Master" AutoEventWireup="true" CodeBehind="ActualizarInformacionAdicional.aspx.cs" Inherits="TravelWebSite.ActualizarInformacionAdicional" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!-- Contenido de la página -->
<script>
$(function() {
    $( "#<%= LbFechaNacimiento.ClientID %>" ).datepicker();
});
</script>
<div class="container">
    <!-- Encabezado de página / Breadcrumb -->
    <div class="row">
        <div class="col-md-12">
            <br />
            <br />
            <h1 class="page-header headerPerfil">Administración de Cuenta
            </h1>
        </div>
    </div>
    <!-- Fin Encabezado de página / Breadcrumb -->

    <!-- Contact Form -->
    <!-- Campos del formulario de contacto con validación de campos-->
    <div class="row">
        <!-- Columna de la izquierda -->
        <div class="col-md-3">
        	<div class="col-md-12" align="center">
        		<img class="img-responsive img-portfolio img-hover" src="">
        	</div>
        	<div class="col-md-12">
        		<p class="text-center"><strong><%=Nombres.Trim()+" "+ Apellidos.Trim() %></strong></p>
        	</div>

        	<div class="col-md-12">
        	<!-- Barra vertical de opciones del perfil de usuairo -->
        		<br >
        		<ul class="list-group list-primary">
        			<a href="InformacionAdicional.aspx" class="list-group-item">Mi perfil</a>
        			<a href="ActualizarInformacionAdicional.aspx" class="list-group-item">Configurar Perfil</a>
                    <a href="PreguntasConfiguradas.aspx" class="list-group-item">Preguntas de Seguridad</a>
    			</ul>
    		</div>
            <!-- Fin Barra vertical de opciones del perfil de usuario -->
        </div>
        <!-- Fin de Columna de la izquierda -->

        <!-- Parte central -->
        <div class="col-md-9">
            <div class="col-md-12" style="border-width: 1px 1px 0px 1px; border-style: solid; border-color: lightgrey;">
                <h3 style="text-align: center; color:#004d9c;">Perfil de Usuario</h3>
            </div>
            <!-- Inicio del div central parte de formulario información básica -->
            <div class="col-md-12" style="border-width: 0px 1px 1px 1px; border-style: solid; border-color: lightgrey; background: white;">
                <div class="col-md-10 col-md-offset-1">
    	                
    	                <div class="control-group form-group">
    	                    <div class="controls">
                            <label>Información básica</label>
                                <div class="row Fondo">
                                    <section id="MensajeError" runat="server" class="hide">
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label><span style="color:red"><%= Mensaje %></span></label>
                                            </div>
                                        </div>
                                    </section>
                                    <div class="col-sm-12">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Nombres</label>
                                                <asp:TextBox ID="LbNombres" class="form-control" placeholder="Nombres" required="" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Apellidos</label>
                                                <asp:TextBox ID="LbApellidos" class="form-control" placeholder="Apellidos" required="" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Nacionalidad</label>
                                                <asp:TextBox ID="LbNacionalidad" class="form-control" placeholder="Nacionalidad" required="" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Fecha de nacimiento</label>
                                                <div class="icon-addon">
                                                   <asp:TextBox ID="LbFechaNacimiento" class="form-control" placeholder="Fecha" required="" runat="server"></asp:TextBox>
                                                   <asp:LinkButton ID="btnFechaNacimiento" runat="server" onclick="btnFechaNacimiento_Click"><span class="glyphicon glyphicon-calendar"></span></asp:LinkButton> 
                                                   <asp:Calendar ID="CalendarFechaNacimiento" Visible="False" OnSelectionChanged="CalendarNacimiento_SelectionChanged" runat="server"></asp:Calendar>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Ciudad de Residencia</label>
                                                <asp:TextBox ID="LbCiudadResidencia" class="form-control" placeholder="Ciudad que reside" required="" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Número de Teléfono Fijo</label>
                                                <asp:TextBox ID="LbTelefono" class="form-control" placeholder="Número de teléfono" required="" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Número de Celular</label>
                                                <asp:TextBox ID="LbCelular" class="form-control" placeholder="Número de celular" required="" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Número de Pasaporte</label>
                                                <asp:TextBox ID="LbPasaporte" class="form-control" placeholder="Número de pasaporte" required="" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Fecha de vencimiento</label>
                                                <div class="icon-addon">
                                                   <asp:TextBox ID="LbPasaporteFecVenc" class="form-control" placeholder="Fecha" required="" runat="server"></asp:TextBox>
                                                   <asp:Calendar ID="CalendarPasaporte" Visible="False" OnSelectionChanged="CalendarPasaporte_SelectionChanged" runat="server"></asp:Calendar>
                                                   <asp:LinkButton ID="btnPasaporteFecha" runat="server" onclick="btnPasaporteFecha_Click"><span class="glyphicon glyphicon-calendar"></span></asp:LinkButton> 
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Número de Visa de Estados Unidos</label>
                                                <asp:TextBox ID="LbVisa" class="form-control" placeholder="Número de visa" required="" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Fecha de vencimiento</label>
                                                <div class="icon-addon">
                                                   <asp:TextBox ID="LbVisaFechVenc" class="form-control" placeholder="Fecha" required="" runat="server"></asp:TextBox>
                                                   <asp:Calendar ID="CalendarVisa" Visible="False" OnSelectionChanged="CalendarVisa_SelectionChanged" runat="server"></asp:Calendar>
                                                   <asp:LinkButton ID="btnVisaFecha" runat="server" onclick="btnVisaFecha_Click"><span class="glyphicon glyphicon-calendar"></span></asp:LinkButton> 
                                                </div>
                                            </div>
                                        </div>
                                            
                                    </div>
                                </div>
    	                    </div>
    	                </div>
                </div>
            </div>
            <!-- Fin del div central parte de formulario información básica -->

               
                    
                <!-- Botones formulario -->
                <div class="col-md-12 container allFormButtons">
                	<br >
    	            <div class="col-md-5 col-md-offset-3">
                        <div class="form-group" align="center">
                            <asp:LinkButton ID="LbGuardar" runat="server" class="thm-btn" OnClick="LbSubmit_Guardar"><strong>Guardar</strong></asp:LinkButton>
                        </div>
                    </div>
                    &nbsp;
    	        </div>
                <!-- Fin botones formulario -->
            </div>
            <!-- Fin Parte central - enlaces -->
        <!-- Fin del form -->
        </div>  
        <!-- Fin del div de parte central -->
    </div>
    <!-- Fin Campos del formulario de contacto con validación de campos -->
    <hr>

</asp:Content>
