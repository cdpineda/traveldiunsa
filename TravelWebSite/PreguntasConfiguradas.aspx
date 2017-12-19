<%@ Page Title="" Language="C#" MasterPageFile="~/TravelSite.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="PreguntasConfiguradas.aspx.cs" Inherits="TravelWebSite.PreguntasConfiguradas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
        		<%--<p class="text-center"><strong><%=Nombres.Trim()+" "+ Apellidos.Trim() %></strong></p>--%>
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
            <form runat="server">
            <div class="col-md-12" style="border-width: 1px 1px 0px 1px; border-style: solid; border-color: lightgrey;">
                <h3 style="text-align: center; color:#004d9c;">Perfil de Usuario</h3>
            </div>
            <!-- Inicio del div central parte de formulario información básica -->
            <div class="col-md-12" style="border-width: 0px 1px 1px 1px; border-style: solid; border-color: lightgrey; background:white;">
                <div class="col-md-12">
    	                
    	                <div class="control-group form-group">
    	                    <div class="controls">
                            <label>Preguntas</label>
                                <div class="row Fondo">
                                    <div class="col-sm-12">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label><%= Pregunta1 %></label>
                                                <div><%= Respuesta1 %></div>
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label><%= Pregunta2 %></label>
                                                <div><%= Respuesta2 %></div>
                                            </div>
                                        </div> 
                                    </div>
                                </div>
    	                        <p class="help-block"></p>
    	                    </div>
    	                </div>
                </div>
            </div>
            <div class="col-md-12 container allFormButtons">
                <br >
    	        <div class="col-md-5 col-md-offset-3">
                    <div class="form-group" align="center">
                        <asp:LinkButton ID="LbModificar" runat="server" class="thm-btn" OnClick="LbModificar_Click"><strong>Modificar</strong></asp:LinkButton>
                    </div>
                </div>
                &nbsp;
    	    </div>
                </form>
            </div>
        </div>  
        <!-- Fin del div de parte central -->
    </div>
<!-- /.container -->
</asp:Content>
