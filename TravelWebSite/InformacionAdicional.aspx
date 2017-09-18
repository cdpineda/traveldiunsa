﻿<%@ Page Title="" Language="C#" MasterPageFile="~/TravelSite.Master" AutoEventWireup="true" CodeBehind="InformacionAdicional.aspx.cs" Inherits="TravelWebSite.InformacionAdicional" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!-- Contenido de la página -->
<div class="container">

    <!-- Encabezado de página / Breadcrumb -->
    <div class="row">
        <div class="col-md-12">
            <br />
            <br />
            <h1 class="page-header">Perfil de usuario
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
        		<p class="text-center"><strong>Nombre Apellido</strong></p>
	        	<p class="text-center"><em>Título del perfil de usuario</em></p>
        	</div>

        	<div class="col-md-12">
        	<!-- Barra vertical de opciones del perfil de usuairo -->
        		<br >
        		<ul class="list-group list-primary">
        			<a href="InformacionAdicional.aspx" class="list-group-item">Mi perfil</a>
        			<a href="ActualizarInformacionAdicional.aspx" class="list-group-item">Configurar Perfil</a>
    			</ul>
    		</div>
            <!-- Fin Barra vertical de opciones del perfil de usuario -->
        </div>
        <!-- Fin de Columna de la izquierda -->

        <!-- Parte central -->
        <div class="col-md-9">
            <div class="col-md-12" style="border-width: 1px 1px 0px 1px; border-style: solid; border-color: lightgrey;">
                <h3 style="text-align: center">Mi perfil</h3>
            </div>
            <!-- Inicio del div central parte de formulario información básica -->
            <div class="col-md-12" style="border-width: 1px 1px 0px 1px; border-style: solid; border-color: lightgrey; background: #f1f3f6;">
                <div class="col-md-12">
    	                
    	                <div class="control-group form-group">
    	                    <div class="controls">
                            <label>Información básica</label>
                                <div class="row Fondo">
                                    <div class="col-sm-12">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Nombres</label>
                                                <div></div>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Apellidos</label>
                                                <div><%= Apellidos %></div>
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Correo Eletrónico</label>
                                                <div><%=Correo %></div>
                                            </div>
                                        </div>
                                            
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Fecha de nacimiento</label>
                                                <div><%= FechaNacimiento %></div>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Ciudad de Residencia</label>
                                                <div><%= Ciudad %></div>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Número de teléfono</label>
                                                <div><%= Telefono %></div>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Número de celular</label>
                                                <div><%= Celular %></div>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>No. de pasaporte</label>
                                                <div><%= Pasaporte %></div>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Fecha de vencimiento</label>
                                                <div><%= PasaporteFechaVenc %></div>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>No. de visa</label>
                                                <div><%= Visa %></div>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Fecha de vencimiento</label>
                                                <div><%= VisaFechaVenc %></div>
                                            </div>
                                        </div>
                                            
                                    </div>
                                </div>
    	                        	
    	                        <p class="help-block"></p>
    	                    </div>
    	                </div>
                </div>
            </div>
            </div>
        </div>  
        <!-- Fin del div de parte central -->
    </div>
    <!-- Fin Campos del formulario de contacto con validación de campos -->
    <hr>
</div>
<!-- /.container -->
</asp:Content>
