<%@ Page Title="" Language="C#" MasterPageFile="~/TravelSite.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="ConfigurarPreguntas.aspx.cs" Inherits="TravelWebSite.ConfigurarPreguntas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
            <div class="col-md-12" style="border-width: 1px 1px 0px 1px; border-style: solid; border-color: lightgrey;">
                <h3 style="text-align: center">Mi perfil</h3>
            </div>
            <!-- Inicio del div central parte de formulario información básica -->
            <div class="col-md-12" style="border-width: 1px 1px 0px 1px; border-style: solid; border-color: lightgrey; background: #f1f3f6;">
                <div class="col-md-12">
    	                
    	                <div class="control-group form-group">
    	                    <div class="controls">
                            <label>Preguntas</label>
                                <div class="row Fondo">
                                    <section id="MensajeError" runat="server" class="hide">
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label><span style="color:red"><%= Mensaje %></span></label>
                                            </div>
                                        </div>
                                    </section>
                                    <div class="col-sm-12">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <asp:dropdownlist id ="ddlComputedColumns" OnClick="combo1click" class="comboBox" runat ="server"></asp:dropdownlist >
                                                <asp:TextBox ID="txtRespuesta1" class="form-control" placeholder="Ingrese su respuesta" required="" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <asp:dropdownlist id ="combo2" class="comboBox" runat ="server"></asp:dropdownlist >
                                                <asp:TextBox ID="txtRespuesta2" class="form-control" placeholder="Ingrese su respuesta" required="" runat="server"></asp:TextBox>
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
    	        <div class="col-md-6">
                    <div class="form-group" align="center">
                        <asp:LinkButton ID="LbModificar" runat="server" class="thm-btn" OnClick="LbModificar_Click"><strong>Modificar</strong></asp:LinkButton>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group" align="center">
                        <asp:LinkButton ID="LbCancelar" runat="server" class="thm-btn-crearcuenta" OnClick="LbCancelar_Click"><strong>Cancelar</strong></asp:LinkButton>
                    </div>
                </div>
                &nbsp;
    	    </div>
            </div>
        </div>  
        <!-- Fin del div de parte central -->
    </div>
<!-- /.container -->
</asp:Content>
