<%@page import="beans.RegIncidentesDTO"%>
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
	<%
		RegIncidentesDTO obj = (RegIncidentesDTO) request.getAttribute("RegIncidentes");
	%>
	<div class="container border border-primary w-50 p-3 mx-auto my-5">
		<h3>Actualización de Registro de Incidentes</h3>
		<form action="ServletRegIncidentes?tipo=actualizar" class="mx-auto" id="frmactualizar" method="post">
	
			<input type="hidden" name="txt_id_reg"
				value="${requestScope.RegIncidentes.id_reg}">
	
			<table align="center">
				<tr>
					<td>NUMERO REGISTRO:</td>
					<td><input class="m-1" type="text" name="txt_num_reg"
						value="${requestScope.RegIncidentes.num_reg}"></td>
				</tr>
				<tr>
					<td>FECHA:</td>
					<td><input class="m-1" type="text" name="txt_fec_reg"
						value="${requestScope.RegIncidentes.fec_reg}"></td>
				</tr>
				<tr>
					<td>HORA:</td>
					<td><input class="m-1" type="text" name="txt_hor_reg"
						value="${requestScope.RegIncidentes.hor_reg}"></td>
				</tr>
				<tr>
				<td>Area:</td>
					<td><select name="txt_area">
							<%
								String area[] = { "", "Marketing", "Tecnologia de la Informacion", "Recursos Humanos", "Finanzas", "Ventas", "Administracion", "Contabilidad", "Relaciones Publicas" };
								String estado = "";
								for (int i = 1; i < area.length; i++) {
									if (Integer.parseInt(obj.getNom_area()) == i) {
										estado = "selected";
									} else {
										estado = "";
									}
							 %>
								<option value="<%=i%>">
									<%=area[i]%>
								</option>
							<%
								 }
							 %>
					</select></td>
				</tr>
				<td>Sección:</td>
					<td><select name="txt_seccion">
							<%
								String seccion[] = { "", "Presupuesto","Facturacion", "Gestion de cuentas", "Publicidad","Relaciones Publicas", "Infraestructura Tecnologica", "Desarrollo y Mantenimiento","Soporte Tecnico", "Seguridad", "Gestion de Proyectos" };
								String estado1 = "";
								for (int i = 1; i < seccion.length; i++) {
									if (Integer.parseInt(obj.getNom_sec()) == i) {
										estado1 = "selected";
									} else {
										estado1 = "";
									}
							 %>
								<option value="<%=i%>">
									<%=seccion[i]%>
								</option>
							<%
								 }
							 %>
					</select></td>
				</tr>
				<td>Tipo:</td>
					<td><select name="txt_tipo">
							<%
								String tipo[] = { "", "Seguridad", "Datos","Interrupciones","Errores Software","Problemas Hardware","Telecomunicaciones" };
								String estado2 = "";
								for (int i = 1; i < tipo.length; i++) {
									if (Integer.parseInt(obj.getNom_tipo()) == i) {
										estado2 = "selected";
									} else {
										estado2 = "";
									}
							 %>
								<option value="<%=i%>">
									<%=tipo[i]%>
								</option>
							<%
								 }
							 %>
					</select></td>
				</tr>
				
				<td>Categoría:</td>
					<td><select name="txt_cat">
							<%
								String cat[] = { "", "Hacking", "Pishing", "Malware","Eliminacion Accidental", "Corrupcion de Datos","Problemas de conectividad","Bugs y fallos de programación","Actualizaciones con problemas","Fallas en Dispositivos", "Incompatibilidad de componentes" };
								String estado3 = "";
								for (int i = 1; i < cat.length; i++) {
									if (Integer.parseInt(obj.getNom_cat()) == i) {
										estado3 = "selected";
									} else {
										estado3 = "";
									}
							 %>
								<option value="<%=i%>">
									<%=cat[i]%>
								</option>
							<%
								 }
							 %>
					</select></td>
				</tr>
				<td>Cargo:</td>
					<td><select name="txt_cargo">
							<%
								String cargo[] = { "", "Gerente Informatico","Supervisor Informatico","Jefe Proyecto","Asistente Finanzas", "Supervisor Soporte Tecnico","Analista","Gerente Seguridad" };
								String estado4 = "";
								for (int i = 1; i < cargo.length; i++) {
									if (Integer.parseInt(obj.getNom_cargo()) == i) {
										estado4 = "selected";
									} else {
										estado4 = "";
									}
							 %>
								<option value="<%=i%>">
									<%=cargo[i]%>
								</option>
							<%
								 }
							 %>
					</select></td>
				</tr>
				<td>Incidente:</td>
					<td><select name="txt_inci">
							<%
								String incidente[] = { "", "Brechas de seguridad","Caida de sito web","Ataque cibernetico","Caida de servicios Cloud","Perdida de datos", "Fallas en el hardware","Interrupciones en servicios de Internet", "Errores de software","Problemas en accesos a BD","Problemas en Telecomunicaciones" };
								String estado5 = "";
								for (int i = 1; i < incidente.length; i++) {
									if (Integer.parseInt(obj.getNom_inc()) == i) {
										estado5 = "selected";
									} else {
										estado5 = "";
									}
							 %>
								<option value="<%=i%>">
									<%=incidente[i]%>
								</option>
							<%
								 }
							 %>
					</select></td>
				</tr>
				<td>Usuario:</td>
					<td><select name="txt_usua">
							<%
								String usuario[] = { "", "Carlos Saravia","Ernesto Rodriguez","Jorge Salinas", "Eduardo Camavinga","Gonzalo Nuñez","Maria Jimenez","Teresa Orbegozo","Genaro Neyra", "Carlos Gimenez","Dario Paz","Jorge Yepez","Ernesto Palacios","Gonzalo Alegria", "Frida Arimborgo","Teresa Sanchez", "Genaro Suarez" };
								String estado6 = "";
								for (int i = 1; i < usuario.length; i++) {
									if (Integer.parseInt(obj.getNomApe_usua()) == i) {
										estado6 = "selected";
									} else {
										estado6 = "";
									}
							 %>
								<option value="<%=i%>">
									<%=usuario[i]%>
								</option>
							<%
								 }
							 %>
					</select></td>
				</tr>
				<td>Responsable:</td>
					<td><select name="txt_resp">
							<%
								String responsable[] = { "", "Humberto Saravia","Juvenal Silva","Patricio Alvarez","Miguel Zavala", "Gianina Vasconcellos","Frida Borges","Daniel Irigoyen" };
								String estado7 = "";
								for (int i = 1; i < responsable.length; i++) {
									if (Integer.parseInt(obj.getNomApe_resp()) == i) {
										estado7 = "selected";
									} else {
										estado7 = "";
									}
							 %>
								<option value="<%=i%>">
									<%=responsable[i]%>
								</option>
							<%
								 }
							 %>
					</select></td>
				</tr>
				<tr>
					<td colspan="2" align="right"><input class="btn btn-warning w-50 m-2" type="submit" value="Actualizar"></td>
				</tr>
			</table>
		</form>
	</div>
	<script src="js/scripts1.js" type="text/javascript"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>