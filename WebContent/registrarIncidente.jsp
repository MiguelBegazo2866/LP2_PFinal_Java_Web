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
		<h3>Registro de Incidente</h3>
		<form class="w-100 mx-auto" action="ServletIncidente?tipo=registrar" id="frmagregar" method="post">
	
			<table align="center">
				<tr>
					<td>Nombre:</td>
					<td><input class="m-1" type="text" name="txt_nom" class="required"></td>
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
					<td colspan="2" align="right"><input class="btn btn-success w-50 m-2" type="submit" value="Registrar"></td>
				</tr>
			</table>
		</form>
	</div>
	<script src="js/scripts1.js" type="text/javascript"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>