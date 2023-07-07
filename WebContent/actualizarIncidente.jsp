<%@page import="beans.IncidenteDTO"%>
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
		IncidenteDTO obj = (IncidenteDTO) request.getAttribute("Incidente");
	%>
	<div class="container border border-secondary w-25 p-3 mx-auto my-5">
		<h3>Incidente - Actualización</h3>
		<form action="ServletIncidente?tipo=actualizar" id="frmactualizar" method="post">
	
			<input type="hidden" name="txt_id"
				value="${requestScope.Incidente.id_inc}">
	
			<table align="center">
				
				<tr>
					<td>Nombre:</td>
					<td><input class="m-1" type="text" name="txt_nom"
						value="${requestScope.Incidente.nom_inc}"></td>
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
				<tr>
					<td colspan="2" align="right"><input class="btn btn-secondary w-50 m-2" type="submit" value="Actualizar"></td>
				</tr>
			</table>
		</form>
	</div>
	<script src="js/scripts1.js" type="text/javascript"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>