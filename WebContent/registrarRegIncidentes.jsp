<%@page import="services.RegIncidentesService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
	<link rel="stylesheet" href="css/estilos1.css" type="text/css">
</head>
<body>
	
	<div class="container border border-primary w-50 p-3 mx-auto my-5">
		<h3>Registro de Incidentes</h3>
		<form class="w-100 mx-auto" action="ServletRegIncidentes?tipo=registrar" id="frmagregar" method="post">
	
			<table align="center">
				<tr>
					<td>NUMERO REGISTRO:</td>
					<td><input class="m-1" type="text" name="txt_num_reg" class="required"></td>
				</tr>
				<tr>
					<td>FECHA:</td>
					<td><input class="m-1" type="text" name="txt_fec_reg" class="required"></td>
				</tr>
				<tr>
					<td>HORA:</td>
					<td><input class="m-1" type="text" name="txt_hor_reg" class="required"></td>
				</tr>
				<tr>
					<td>Area:</td>
					<td><select type="text" id="demo1" name="txt_area"
						onChange="combo(this, demo1)">

							<option value="1">Marketing</option>

							<option value="2">Tecnologia de la Informacion</option>

							<option value="3">Recursos Humanos</option>
							
							<option value="4">Finanzas</option>
							
							<option value="5">Ventas</option>
							
							<option value="6">Administracion</option>
							
							<option value="7">Contabilidad</option>
							
							<option value="8">Relaciones Publicas</option>

					     </select>
					</td>
				</tr>
				<tr>
					<td>Sección:</td>
					<td><select type="text" id="demo2" name="txt_seccion"
						onChange="combo(this, demo2)">

							<option value="1">Presupuesto</option>

							<option value="2">Facturacion</option>

							<option value="3">Gestion de cuentas</option>
							
							<option value="4">Publicidad</option>
							
							<option value="5">Relaciones Publicas</option>
							
							<option value="6">Infraestructura Tecnologica</option>
							
							<option value="7">Desarrollo y Mantenimiento</option>
							
							<option value="8">Soporte Tecnico</option>
							
							<option value="9">Seguridad</option>
							
							<option value="10">Gestion de Proyectos</option>

					     </select>
					</td>
				</tr>
				<tr>
					<td>Tipo:</td>
					<td><select type="text" id="demo3" name="txt_tipo"
						onChange="combo(this, demo3)">

							<option value="1">Seguridad</option>

							<option value="2">Datos</option>

							<option value="3">Interrupciones</option>
							
							<option value="4">Errores Software</option>
							
							<option value="5">Problemas Hardware</option>
							
							<option value="6">Telecomunicaciones</option>

					     </select>
					</td>
				</tr>
				<tr>
					<td>Categoría:</td>
					<td><select type="text" id="demo4" name="txt_cat"
						onChange="combo(this, demo4)">

							<option value="1">Hacking</option>

							<option value="2">Pishing</option>

							<option value="3">Malware</option>
							
							<option value="4">Eliminacion Accidental</option>
							
							<option value="5">Corrupcion de Datos</option>
							
							<option value="6">Problemas de conectividad</option>
							
							<option value="7">Bugs y fallos de programación</option>
							
							<option value="8">Actualizaciones con problemas</option>
							
							<option value="9">Fallas en Dispositivos</option>
							
							<option value="10">Incompatibilidad de componentes</option>

					     </select>
					</td>
				</tr>
				<tr>
					<td>Cargo:</td>
					<td><select type="text" id="demo5" name="txt_cargo"
						onChange="combo(this, demo5">

							<option value="1">Gerente Informatico</option>

							<option value="2">Supervisor Informatico</option>

							<option value="3">Jefe Proyecto</option>
							
							<option value="4">Asistente Finanzas</option>
							
							<option value="5">Supervisor Soporte Tecnico</option>
							
							<option value="6">Analista</option>
							
							<option value="7">Gerente Seguridad</option>

					     </select>
					</td>
				</tr>
				<tr>
					<td>Incidente:</td>
					<td><select type="text" id="demo6" name="txt_inci"
						onChange="combo(this, demo6">

							<option value="1">Brechas de seguridad</option>

							<option value="2">Caida de sito web</option>

							<option value="3">Ataque cibernetico</option>
							
							<option value="4">Caida de servicios Cloud</option>
							
							<option value="5">Perdida de datos</option>
							
							<option value="6">Fallas en el hardware</option>
							
							<option value="7">Interrupciones en servicios de Internet</option>
							
							<option value="8">Errores de software</option>
							
							<option value="9">Problemas en accesos a BD</option>
							
							<option value="10">Problemas en Telecomunicaciones</option>

					     </select>
					</td>
				</tr>
				<tr>
					<td>Usuario:</td>
					<td><select type="text" id="demo7" name="txt_usua"
						onChange="combo(this, demo7">

							<option value="1">Carlos Saravia</option>

							<option value="2">Ernesto Rodriguez</option>

							<option value="3">Jorge Salinas</option>
							
							<option value="4">Eduardo Camavinga</option>
							
							<option value="5">Gonzalo Nuñez</option>
							
							<option value="6">Maria Jimenez</option>
							
							<option value="7">Teresa Orbegozo</option>
							
							<option value="8">Genaro Neyra</option>
							
							<option value="9">Carlos Gimenez</option>
							
							<option value="10">Dario Paz</option>
							
							<option value="11">Jorge Yepez</option>
							
							<option value="12">Ernesto Palacios</option>
							
							<option value="13">Gonzalo Alegria</option>
							
							<option value="14">Frida Arimborgo</option>
							
							<option value="15">Teresa Sanchez</option>
							
							<option value="16">Genaro Suarez</option>

					     </select>
					</td>
				</tr>
				<tr>
					<td>Responsable:</td>
					<td><select type="text" id="demo8" name="txt_resp"
						onChange="combo(this, demo8">

							<option value="1">Humberto Saravia</option>

							<option value="2">Juvenal Silva</option>

							<option value="3">Patricio Alvarez</option>
							
							<option value="4">Miguel Zavala</option>
							
							<option value="5">Gianina Vasconcellos</option>
							
							<option value="6">Frida Borges</option>
							
							<option value="7">Daniel Irigoyen</option>
							
					     </select>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="right"><input class="btn btn-primary w-50 m-2 " type="submit" value="Registrar"></td>
				</tr>
			</table>
		</form>
	</div>
	<script src="js/scripts1.js" type="text/javascript"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>