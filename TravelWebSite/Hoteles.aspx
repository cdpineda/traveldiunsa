﻿<%@ Page Title="" Language="C#" MasterPageFile="~/TravelSite.Master" AutoEventWireup="true" CodeBehind="Hoteles.aspx.cs" Inherits="TravelWebSite.Hoteles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="row">
﻿<div class="containerBox container-box-hotel containerBox-header">
	<div class="titulo">&nbsp;&nbsp;&nbsp;Hoteles</div>
</div>
<div class="containerBox container-box-hotel">
	    <form action="https://reservaciones.travelint.net/boxtravelnet/hotels" method="post" enctype="multipart/form-data" name="form" id="form-hotel">
			<!-- Inicia parametros configuralbles -->
			<input type="hidden" value="2cf87f87ff68ed23ac66a8c691e19632" name="id">
			<input type="hidden" name="language" value="es"/> <!-- lenguaje of system "es" "en" -->
			<input type="hidden" name="c" value="USD"/> <!-- "MXN" "USD" -->
			<input type="hidden" id="limit" value="20"/> <!-- Autocomplete "0"-"100" -->
			<input type="hidden" id="lang" value="es"/> <!-- lenguaje of autocomplete "es" "en" -->
			<input type="hidden" name="sortby" value="ofertas"/>
			<!-- Termina parametros configuralbles -->
				<div class="divNewLine">
					<label class="label-hiden">Destino</label>
					<div class="divNewLine"></div>
					<input id="destino-hotel" class="searchCity" name="d" placeholder="Destino" autocomplete="off" type="text">
					<div class="divNewLine">
		    	    	<div class="elementHidden warning" id="warningDest">Selecciona un Destino</div>
						<input type="hidden" value="" name="dc" id="citycode-hotel" autocomplete="off">
					</div>
				</div>				
				<div class="divNewLine">
					<label class="label-hiden">Nombre del Hotel (Opcional)</label>
					<div class="divNewLine"></div>
					<input id="nh" class="searchCity" type="text" placeholder="Nombre del Hotel (Opcional)" name="nh" autocomplete="off">
				</div>
				<div class="divNewLine"></div>
				<div class="divNewLine">
					<label class="label-hiden">Fecha de llegada</label>
					<div class="divNewLine"></div>
					<img alt="calendario" src="assets/images/calendario.svg" class="calendarioIcon-hotel">                    
					<input name="sd" placeholder="Fecha de Llegada" type="text" id="startDate-hotel" class="input-date" readonly="readonly" autocomplete="off" />
					<div class="divNewLine">
						<div class="elementHidden warning" id="warning">Selecciona un día de entrada</div>
					</div>
				</div>
				<div class="divNewLine">
					<label class="label-hiden">Fecha de salida</label>
					<div class="divNewLine"></div>
					<img alt="calendario" src="assets/images/calendario.svg" class="calendarioIcon-hotel">
					<input name="ed" placeholder="Fecha de Salida" type="text" id="endDate-hotel" class="input-date" readonly="readonly" autocomplete="off" />
					<div class="divNewLine">
						<div class="elementHidden warning" id="warningDates">La fecha de entrada y salida no deben ser las mismas.</div>
					</div>
				</div>
				
				<div class="divNewLine">
					<div class="divCell-100px">
						<label>Habitaciones</label>
						<div class="divNewLine"></div>
		 				<div id="rooms">
							<select id='r' name='r' autocomplete="off">
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
							</select>
						</div>
					</div>
					<div class="divCell-100px">
						<label>Adultos</label>
						<div class="divNewLine"></div>
						<select class="numAdultsRoom" id="r1a-hotel-" name='r1a' onchange="arg(this.id,this.value)" autocomplete="off">
							<option>1</option>
							<option selected="selected" value="2">2 (Doble)</option>
							<option value="5">2 (Twin)</option>
							<option>3</option>
							<option>4</option>
							<option value="5.1">5</option>
							<option>6</option>
							<option>7</option>
							<option>8</option>
						</select>
					</div>
					<div class="divCell-100px">
						<label>Niños</label>
						<div class="divNewLine"></div>
						<select class="smallNumberBox" id="r1k-hotel-" name='r1k' onchange="arg(this.id,this.value)">
							<option>0</option>
							<option>1</option>
							<option>2</option>
							<option>3</option>
						</select>
			       	</div>
				</div>	
				
			<div id="r2kage" class="elementHidden divNewLine">
				<div class="divCell-100px">
						
				</div>
				<div class="divCell-100px">
	              <label>Adultos</label>
	              <div class="divNewLine"></div>
	              <select class="numAdultsRoom" name='r2a' id="r2a-hotel-" onchange="arg(this.id,this.value)" autocomplete="off">
	                <option>1</option>
	                <option selected="selected" value="2">2 (Doble)</option>
	                <option value="5">2 (Twin)</option>
	                <option>3</option>
	                <option>4</option>
					<option value="5.1">5</option>
					<option>6</option>
					<option>7</option>
					<option>8</option>	                
	              </select>
	            </div>
	            <div class="divCell-100px">
	              <label>Niños</label>
	              <div class="divNewLine"></div>
	              <select class="smallNumberBox" name='r2k' id="r2k-hotel-"  onchange="arg(this.id,this.value)" autocomplete="off">
	                <option>0</option>
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	              </select>
	            </div>
	       	</div>  
			<div id="r3kage" class="elementHidden divNewLine">
				<div class="divCell-100px">
						
				</div>
	            <div class="divCell-100px" >
	              <label>Adultos</label>
	              <div class="divNewLine"></div>
	              <select class="numAdultsRoom" id="r3a-hotel-" name='r3a' onchange="arg(this.id,this.value)" autocomplete="off">
	                <option>1</option>
	                <option selected="selected" value="2">2 (Doble)</option>
	                <option value="5">2 (Twin)</option>
	                <option>3</option>
	                <option>4</option>
					<option value="5.1">5</option>
					<option>6</option>
					<option>7</option>
					<option>8</option>                
	              </select>
	            </div>
	          
	            <div class="divCell-100px">
	              <label>Niños</label>
	              <div class="divNewLine"></div>
	              <select class="smallNumberBox" id="r3k-hotel-" name='r3k' onchange="arg(this.id,this.value)" autocomplete="off">
	                <option>0</option>
	                <option>1</option>
	                <option>2</option>
	                <option>3</option>
	              </select>
	            </div>
      	 </div>	
      	 <div id="r4kage" class="elementHidden divNewLine" >
      	 	<div class="divCell-100px">
						
			</div>
            <div class="divCell-100px">
              <label>Adultos</label>
              <div class="divNewLine"></div>
              <select class="numAdultsRoom" id="r4a-hotel-" name='r4a' onchange="arg(this.id,this.value)" autocomplete="off">
                <option>1</option>
                <option selected="selected" value="2">2 (Doble)</option>
                <option value="5">2 (Twin)</option>
                <option>3</option>
                <option>4</option>
				<option value="5.1">5</option>
				<option>6</option>
				<option>7</option>
				<option>8</option>                
              </select>
            </div>
          
            <div class="divCell-100px">
              <label>Niños</label>
              <div class="divNewLine"></div>
              <select class="smallNumberBox" id="r4k-hotel-" name='r4k' onchange="arg(this.id,this.value)" autocomplete="off">
                <option>0</option>
                <option>1</option>
                <option>2</option>
                <option>3</option>
              </select>
            </div>
          </div>
		  <div id="r5kage" class="elementHidden divNewLine">
		  	<div class="divCell-100px">
						
			</div>
            <div class="divCell-100px">
              <label>Adultos</label>
              <div class="divNewLine"></div>
              <select class="numAdultsRoom" id="r5a-hotel-" name='r5a' onchange="arg(this.id,this.value)" autocomplete="off">
                <option>1</option>
                <option selected="selected" value="2">2 (Doble)</option>
                <option value="5">2 (Twin)</option>
                <option>3</option>
                <option>4</option>
				<option value="5.1">5</option>
				<option>6</option>
				<option>7</option>
				<option>8</option>                
              </select>
            </div>
            <div class="divCell-100px">
              <label>Niños</label>
              <div class="divNewLine"></div>
              <select class="smallNumberBox" id="r5k-hotel-" name='r5k' onchange="arg(this.id,this.value)" autocomplete="off">
                <option>0</option>
                <option>1</option>
                <option>2</option>
                <option>3</option>
              </select>
            </div>
        </div>		
			
				<div class="divNewLine elementHidden" id="kids-age-label">
				<label>Especificar las edades de los ni&ntilde;os ( 0 - 18 )</label>
				<hr>
				</div>			

				<div id="textr1k-hotel-" class="divNewLine elementHidden">

				      	<label>Habitaci&oacute;n 1</label>
				      	<div class="divNewLine"></div>
						<div class='divCell-100px'>
						<select id="r1k-hotel-1a" name='r1k1a' class="numInputHidden" size="1" autocomplete="off" onchange="arg(this.id,this.value)">
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="13">13</option>
							<option value="14">14</option>
							<option value="15">15</option>
							<option value="16">16</option>
							<option value="17">17</option>
						</select>
						</div>
						<div class='divCell-100px'>
						<select id="r1k-hotel-2a" name='r1k2a' class="numInputHidden" size="1" autocomplete="off" onchange="arg(this.id,this.value)">
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="13">13</option>
							<option value="14">14</option>
							<option value="15">15</option>
							<option value="16">16</option>
							<option value="17">17</option>
						</select> 
						</div>
						<div class='divCell-100px'>
						<select id="r1k-hotel-3a" name='r1k3a' class="numInputHidden" size="1" autocomplete="off" onchange="arg(this.id,this.value)">
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="13">13</option>
							<option value="14">14</option>
							<option value="15">15</option>
							<option value="16">16</option>
							<option value="17">17</option>
						</select>
						</div>
				</div>
				
				
				<div id="textr2k-hotel-" class="divNewLine elementHidden">
	              <label>Habitaci&oacute;n 2</label>
	                <div class="divNewLine"></div>
	              
					<div class='divCell-100px'>
	                <select id="r2k-hotel-1a" name='r2k1a'  class="numInputHidden" size="1" onchange="arg(this.id,this.value)" autocomplete="off">
	                  <option value="0">0</option>
	                  <option value="1">1</option>
	                  <option value="2">2</option>
	                  <option value="3">3</option>
	                  <option value="4">4</option>
	                  <option value="5">5</option>
	                  <option value="6">6</option>
	                  <option value="7">7</option>
	                  <option value="8">8</option>
	                  <option value="9">9</option>
	                  <option value="10">10</option>
	                  <option value="11">11</option>
	                  <option value="12">12</option>
	                  <option value="13">13</option>
	                  <option value="14">14</option>
	                  <option value="15">15</option>
	                  <option value="16">16</option>
	                  <option value="17">17</option>
	                </select>
	                </div>
						<div class='divCell-100px'>
	                <select id="r2k-hotel-2a" name='r2k2a' class="numInputHidden" size="1"  onchange="arg(this.id,this.value)" autocomplete="off">
	                  <option value="0">0</option>
	                  <option value="1">1</option>
	                  <option value="2">2</option>
	                  <option value="3">3</option>
	                  <option value="4">4</option>
	                  <option value="5">5</option>
	                  <option value="6">6</option>
	                  <option value="7">7</option>
	                  <option value="8">8</option>
	                  <option value="9">9</option>
	                  <option value="10">10</option>
	                  <option value="11">11</option>
	                  <option value="12">12</option>
	                  <option value="13">13</option>
	                  <option value="14">14</option>
	                  <option value="15">15</option>
	                  <option value="16">16</option>
	                  <option value="17">17</option>
	                </select> 
	                </div>
						<div class='divCell-100px'>
	                <select id="r2k-hotel-3a" name='r2k3a' class="numInputHidden" size="1"  onchange="arg(this.id,this.value)" autocomplete="off">
	                  <option value="0">0</option>
	                  <option value="1">1</option>
	                  <option value="2">2</option>
	                  <option value="3">3</option>
	                  <option value="4">4</option>
	                  <option value="5">5</option>
	                  <option value="6">6</option>
	                  <option value="7">7</option>
	                  <option value="8">8</option>
	                  <option value="9">9</option>
	                  <option value="10">10</option>
	                  <option value="11">11</option>
	                  <option value="12">12</option>
	                  <option value="13">13</option>
	                  <option value="14">14</option>
	                  <option value="15">15</option>
	                  <option value="16">16</option>
	                  <option value="17">17</option>
	                </select>
	                </div>
			</div>

            <div id="textr3k-hotel-" class="divNewLine elementHidden">
              <label>Habitaci&oacute;n 3</label>
              <div class="divNewLine"></div>
              <div class='divCell-100px'>
                <select id="r3k-hotel-1a" name='r3k1a' class="numInputHidden" size="1"  onchange="arg(this.id,this.value)" autocomplete="off">
                  <option value="0">0</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                  <option value="10">10</option>
                  <option value="11">11</option>
                  <option value="12">12</option>
                  <option value="13">13</option>
                  <option value="14">14</option>
                  <option value="15">15</option>
                  <option value="16">16</option>
                  <option value="17">17</option>
                </select>
                </div>
						<div class='divCell-100px'>
                <select id="r3k-hotel-2a" name='r3k2a' class="numInputHidden" size="1"  onchange="arg(this.id,this.value)" autocomplete="off">
                  <option value="0">0</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                  <option value="10">10</option>
                  <option value="11">11</option>
                  <option value="12">12</option>
                  <option value="13">13</option>
                  <option value="14">14</option>
                  <option value="15">15</option>
                  <option value="16">16</option>
                  <option value="17">17</option>
                </select> 
                </div>
						<div class='divCell-100px'>
                <select id="r3k-hotel-3a" name='r3k3a' class="numInputHidden" size="1"  onchange="arg(this.id,this.value)" autocomplete="off">
                  <option value="0">0</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                  <option value="10">10</option>
                  <option value="11">11</option>
                  <option value="12">12</option>
                  <option value="13">13</option>
                  <option value="14">14</option>
                  <option value="15">15</option>
                  <option value="16">16</option>
                  <option value="17">17</option>
                </select>
                <div class='divCell-50px'>
            </div>
          </div>
         </div>

            <div id="textr4k-hotel-" class="divNewLine elementHidden">
              <label>Habitaci&oacute;n 4</label>
              <div class="divNewLine"></div>

				<div class='divCell-100px'>
                <select id="r4k-hotel-1a" name='r4k1a' class="numInputHidden" size="1"  onchange="arg(this.id,this.value)" autocomplete="off">
                  <option value="0">0</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                  <option value="10">10</option>
                  <option value="11">11</option>
                  <option value="12">12</option>
                  <option value="13">13</option>
                  <option value="14">14</option>
                  <option value="15">15</option>
                  <option value="16">16</option>
                  <option value="17">17</option>
                </select>
                </div>
				<div class='divCell-100px'>
                <select id="r4k-hotel-2a" name='r4k2a' class="numInputHidden" size="1"  onchange="arg(this.id,this.value)" autocomplete="off">
                  <option value="0">0</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                  <option value="10">10</option>
                  <option value="11">11</option>
                  <option value="12">12</option>
                  <option value="13">13</option>
                  <option value="14">14</option>
                  <option value="15">15</option>
                  <option value="16">16</option>
                  <option value="17">17</option>
                </select> 
                 </div>
				<div class='divCell-100px'>
                <select id="r4k-hotel-3a" name='r4k3a' class="numInputHidden" size="1"  onchange="arg(this.id,this.value)" autocomplete="off">
                  <option value="0">0</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                  <option value="10">10</option>
                  <option value="11">11</option>
                  <option value="12">12</option>
                  <option value="13">13</option>
                  <option value="14">14</option>
                  <option value="15">15</option>
                  <option value="16">16</option>
                  <option value="17">17</option>
                </select>
                 </div>
				
            </div>

            <div id="textr5k-hotel-" class="divNewLine elementHidden">
              <label>Habitaci&oacute;n 5</label>
              <div class="divNewLine"></div> 
                
				<div class='divCell-100px'>
                <select id="r5k-hotel-1a" name='r5k1a' class="numInputHidden" size="1"  onchange="arg(this.id,this.value)" autocomplete="off">
                  <option value="0">0</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                  <option value="10">10</option>
                  <option value="11">11</option>
                  <option value="12">12</option>
                  <option value="13">13</option>
                  <option value="14">14</option>
                  <option value="15">15</option>
                  <option value="16">16</option>
                  <option value="17">17</option>
                </select>
                 </div>
				<div class='divCell-100px'>
                <select id="r5k-hotel-2a" name='r5k2a' class="numInputHidden" size="1"  onchange="arg(this.id,this.value)" autocomplete="off"> 
                  <option value="0">0</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                  <option value="10">10</option>
                  <option value="11">11</option>
                  <option value="12">12</option>
                  <option value="13">13</option>
                  <option value="14">14</option>
                  <option value="15">15</option>
                  <option value="16">16</option>
                  <option value="17">17</option>
                </select>
                 </div>
				<div class='divCell-100px'>
                <select id="r5k-hotel-3a" name='r5k3a' class="numInputHidden" size="1"  onchange="arg(this.id,this.value)" autocomplete="off">
                  <option value="0">0</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                  <option value="10">10</option>
                  <option value="11">11</option>
                  <option value="12">12</option>
                  <option value="13">13</option>
                  <option value="14">14</option>
                  <option value="15">15</option>
                  <option value="16">16</option>
                  <option value="17">17</option>
                </select>
                 </div>

            </div>
		<div class="divNewLine"></div>
	</form>
</div>
<div class="containerBox container-box-hotel containerBox-footer buttonForm" id="ver-precios-hotel" align="center">
	<span id='divbuttonverprecios-hotel' class="buscar-label">Buscar</span>
	<div class="elementHidden" id='divbuttonverpreciosbuscando-hotel'>
		<label class="buscar-label label-buscando">Buscando...</label>
		<img class='image-svg-loading' alt="Buscando..." src="assets/images/loading-cylon-white.svg" />
	</div>
</div>
<!-- Configuracion de imagenes de loading. -->
<span style="display: none;" id="loading-tag-hotel">
	<!-- Inicia tag de imagen <img>. -->
	<span class="tag-img">
		<img height="100px" src="assets/images/page-loader.gif" />
	</span>
	<!-- Termina tag de imagen. -->
	<!-- Inicia tag de svg <svg> -->
	<span class="tag-svg">
		<svg style="margin-top: 10px, margin-bottom:10px"
			width="100" height="100" viewBox="0 0 100 100"
			xmlns="http://www.w3.org/2000/svg" stroke="#fff">
			<g fill="none" fill-rule="evenodd" stroke-width="3">
			<circle cx="50" cy="50" r="1">
			<animate attributeName="r" begin="0s" dur="1.8s" values="10; 50"
				calcMode="spline" keyTimes="0; 1" keySplines="0.25, 0.84, 0.44, 1"
				repeatCount="indefinite" />
			<animate attributeName="stroke-opacity" begin="0s" dur="1.8s"
				values="10; 0" calcMode="spline" keyTimes="0; 1"
				keySplines="0.5, 0.61, 0.355, 1" repeatCount="indefinite" /></circle>
			<circle cx="50" cy="50" r="1">
			<animate attributeName="r" begin="-0.9s" dur="1.8s" values="10; 50"
				calcMode="spline" keyTimes="0; 1" keySplines="0.25, 0.84, 0.44, 1"
				repeatCount="indefinite" />
			<animate attributeName="stroke-opacity" begin="-0.9s" dur="1.8s"
				values="10; 0" calcMode="spline" keyTimes="0; 1"
				keySplines="0.5, 0.61, 0.355, 1" repeatCount="indefinite" /></circle></g>
		</svg>
	</span>
	<!-- Termina tag de svg <svg> -->
</span>
     </div>

</asp:Content>
