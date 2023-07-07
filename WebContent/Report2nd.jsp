
<%@page import="entidad.ResponsableTech"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
	ArrayList<ResponsableTech> datos = new ArrayList<ResponsableTech>();
	Class.forName("com.mysql.jdbc.Driver");
	try{
		Connection miCX = DriverManager.getConnection("jdbc:mysql://localhost:3306/incidentes_tech", "root", "mysql");
		Statement miStatement = miCX.createStatement();
		String comandoSQL = "select r.id_resp, r.nomApe_resp, r.cod_resp, c.nom_cargo, s.nom_sec from tb_responsable r inner join tb_cargo c on c.id_cargo = r.id_cargo inner join tb_seccion s on s.id_sec = r.id_sec";
		ResultSet rs = miStatement.executeQuery(comandoSQL);
		while(rs.next()){
			datos.add(new ResponsableTech(rs.getInt(1),
					rs.getString(2),
					rs.getString(3),
					rs.getString(4),
					rs.getString(5)));
		}
		rs.close();
		miCX.close();
	}
	catch (Exception e){
		out.println("Ocurrio un error !!!");
	}
	pageContext.setAttribute("losResponsables", datos);
%>
        
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<style>
	.cabecera{
		font-weight:bold;
	}
	</style>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
	<link rel="stylesheet" href="css/estilos1.css" type="text/css">
</head>
<body>
	<header>
		<!-- título -->
        <nav class="nav-encabezado">
            <p>RECEPCION Y ATENCION DE INCIDENTES TECNOLOGICOS</p>
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
	<div class="contenedor table-responsive p-5">
		<div class="text-dark p-3 display-6" style="font-size:24px;">
			<%= new java.util.Date() %>
		</div>
		<p class="display-6">Reporte de Responsables</p>
		<table class="table table-sd table-bordered border-primary w-75 mx-auto">
			<tr class="cabecera table-dark">
				<td>Codigo</td>
				<td>Nombres y Apellidos</td>
				<td>Codigo</td>
				<td>Cargo</td>
				<td>Seccion</td>
				
			</tr>
			
			<c:forEach var="Responsabletemporal" items="${ losResponsables }">
				<tr>
					<td>${Responsabletemporal.id_resp}</td>
					<td>${Responsabletemporal.nomApe_resp}</td>
					<td>${Responsabletemporal.cod_resp}</td>
					<td>${Responsabletemporal.nom_cargo}</td>
					<td>${Responsabletemporal.nom_sec}</td>
				</tr>
			</c:forEach>
			
		</table>
	</div>
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