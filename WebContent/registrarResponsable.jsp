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
	<div class="container border border-primary w-25 p-3 mx-auto my-5">
		<h3>Registro de Responsable</h3>
		<form class="w-100 mx-auto" action="ServletResponsable?tipo=registrar" id="frmagregar" method="post">
	
			<table align="center">
				<tr>
					<td>Nombres y Apellidos:</td>
					<td><input class="m-1" type="text" name="txt_nom_ape" class="required"></td>
				</tr>
				<tr>
					<td>Código:</td>
					<td><input class="m-1" type="text" name="txt_cod" class="required"></td>
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
					<td colspan="2" align="right"><input class="btn btn-primary w-50 m-2" type="submit" value="Registrar"></td>
				</tr>
			</table>
		</form>
	</div>
	<script src="js/scripts1.js" type="text/javascript"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>