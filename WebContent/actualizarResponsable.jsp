<%@page import="beans.ResponsableDTO"%>
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
		ResponsableDTO obj = (ResponsableDTO) request.getAttribute("Responsable");
	%>
	<div class="container border border-primary w-25 p-3 mx-auto my-5">
		<h3>Responsable - Actualización</h3>
		<form action="ServletResponsable?tipo=actualizar" id="frmactualizar" method="post">
	
			<input type="hidden" name="txt_id"
				value="${requestScope.Responsable.id_resp}">
	
			<table align="center">
				<tr>
					<td>Nombres y Apellidos:</td>
					<td><input class="m-1" type="text" name="txt_nom_ape"
						value="${requestScope.Responsable.nomApe_resp}"></td>
				</tr>
				<tr>
					<td>Código:</td>
					<td><input class="m-1" type="text" name="txt_cod"
						value="${requestScope.Responsable.cod_resp}"></td>
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