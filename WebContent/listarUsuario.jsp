<%@page import="beans.UsuarioDTO"%>
<%@page import="java.util.ArrayList"%>
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
	<header>
		<!-- t�tulo -->
        <nav class="nav-encabezado">
            <h5>RECEPCION Y ATENCION DE INCIDENTES TECNOLOGICOS</h5>
        </nav>
		<nav class="navbar navbar-expand-lg bg-dark">
		  <div class="container-fluid">
		    <a class="navbar-brand" href="#">SMV</a>
		    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		    <div class="collapse navbar-collapse" id="navbarSupportedContent">
		      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
		        <li class="nav-item">
		          <a class="nav-link active" style="color:white;" aria-current="page" href="index.jsp">Inicio</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="ServletRegIncidentes?tipo=listar">Incidentes Tecnologicos</a>
		        </li>
		        <li class="nav-item dropdown">
		          <a class="nav-link dropdown-toggle" style="color:white;" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
		            Mantenimientos
		          </a>
		          <ul class="dropdown-menu">
		            <li><a class="dropdown-item" href="ServletUsuario?tipo=listar">Tabla Usuario</a></li>
		            <li><a class="dropdown-item" href="ServletResponsable?tipo=listar">Tabla Responsable</a></li>
		            <li><a class="dropdown-item" href="ServletIncidente?tipo=listar">Tabla Incidente</a></li>
		          </ul>
		        </li>
		        <li class="nav-item dropdown">
		          <a class="nav-link dropdown-toggle"  style="color:white;" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
		            Reportes
		          </a>
		          <ul class="dropdown-menu">
		            <li><a class="dropdown-item" href="ServletUsuario?tipo=arealistar">Usuario por Area</a></li>
		            <li><a class="dropdown-item" href="ServletIncidente?tipo=tipolistar">Incidente por Tipo</a></li>
		            <li><a class="dropdown-item" href="ServletResponsable?tipo=cargolistar">Resposable por cargo</a></li>
		            <li><a class="dropdown-item" href="Report1st.jsp">Reporte 1 JSTL</a></li>
		            <li><a class="dropdown-item" href="Report2nd.jsp">Reporte 2 JSTL</a></li>
		          </ul>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="sobreNosotros.jsp">Nosotros</a>
		        </li>
		      </ul>
		    </div>
		  </div>
		</nav>
	</header>
	<main>
		
		<div class="container pt-5 pb-5">
			<div class="boton-registrar w-25 mx-auto my-3">
				<a class="btn btn-primary w-100" href="registrarUsuario.jsp">Nuevo Usuario</a>
			</div>
			<table class="table table-bordered border-primary">
				<tr class="table-primary">
					<th>C�DIGO</th>
					<th>NOMBRES y APELLIDOS:</th>
					<th>DNI</th>
					<th>AREA</th>
					<th>SECCION</th>
					<th colspan="2">ACCIONES</th>
				</tr>
				<%
						ArrayList<UsuarioDTO> lista = (ArrayList<UsuarioDTO>) request.getAttribute("data");
			
						if (lista != null) {
				
							for (UsuarioDTO xUsua : lista) {
				
								out.println("<tr>");
				
								out.println("<td>" + xUsua.getId_usua() + "</td>");
								
								out.println("<td>" + xUsua.getNomApe_usua() + "</td>");
				
								out.println("<td>" + xUsua.getDni_usua() + "</td>");
								
								out.println("<td>" + xUsua.getNom_area() + "</td>");
				
								out.println("<td>" + xUsua.getNom_sec() + "</td>");
				
								out.println("<td align='center'><a href='ServletUsuario?tipo=buscar&cod=" + xUsua.getId_usua()
								
								+ "'><img src='images/edit.png' title='Editar'></a></td>");
				
								out.println("<td align='center'><a href='ServletUsuario?tipo=eliminar&cod=" + xUsua.getId_usua()
				
								+ "'><img src='images/delete.png' title='Eliminar'></a></td>");
				
								out.println("</tr>");
				
							 } 
					
						 }
					%>
		
			</table>
		</div>
    </main>
    <footer>
        <!-- contenedor derechos -->
        <div class="derechos">
            <p>Todos los Derechos Reservados@Copyright 2023 - Begazo</p>
        </div>
        <!-- contenedor redes sociales -->
        <div class="socialmedia">
            <img src="images/facebook.jpg" alt="Imagen no encontrada">
            <img src="images/twitter.png" alt="Imagen no encontrada">
            <img src="images/youtube.png" alt="Imagen no encontrada">
        </div>
    </footer>
	<script src="js/scripts1.js" type="text/javascript"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>