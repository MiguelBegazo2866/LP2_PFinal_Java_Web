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
		<!-- título -->
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
		          <a class="nav-link" href="#">Nosotros</a>
		        </li>
		      </ul>
		    </div>
		  </div>
		</nav>
	</header>
	<main>
		<div class="card w-75 mx-auto mt-5 mb-5">
	        <div class="card-header bg-primary text-white h1 text-center">Formulario de Incidentes Tecnológicos</div>
	        <div class="card-body">
				<form class="w-75 mx-auto border border-primary p-5" action="#" id="frmagregar" method="post">
				  <div class="form-row" style="display:flex;">
				    <div class="col-md-4 mb-3">
				      <label for="validationDefault01">First name</label>
				      <input type="text" class="form-control" id="validationDefault01" placeholder="First name" value="Mark" required>
				    </div>
				    <div class="col-md-4 mb-3">
				      <label for="validationDefault02">Last name</label>
				      <input type="text" class="form-control" id="validationDefault02" placeholder="Last name" value="Otto" required>
				    </div>
				    <div class="col-md-4 mb-3">
				      <label for="validationDefaultUsername">Username</label>
				      <div class="input-group">
				        <div class="input-group-prepend">
				          <span class="input-group-text" id="inputGroupPrepend2">@</span>
				        </div>
				        <input type="text" class="form-control" id="validationDefaultUsername" placeholder="Username" aria-describedby="inputGroupPrepend2" required>
				      </div>
				    </div>
				  </div>
				  <div class="form-row" style="display:flex;">
					  <div class="input-group">
						  <select class="custom-select w-50" id="inputGroupSelect04">
						    <option selected value="1">One</option>
						    <option value="2">Two</option>
						    <option value="3">Three</option>
						  </select>
						  <div class="input-group-append">
						    <button class="btn btn-primary" type="button">Button</button>
						  </div>
					  </div>
					  <div class="input-group">
						  <select class="custom-select w-50" id="inputGroupSelect04">
						    <option selected value="1">USA</option>
						    <option value="2">Perú</option>
						    <option value="3">Uruguay</option>
						  </select>
						  <div class="input-group-append">
						    <button class="btn btn-secondary" type="button">Button</button>
						  </div>
					  </div>
				  </div>
				  <div class="form-row" style="display:flex;">
				    <div class="col-md-6 mb-3">
				      <label for="validationDefault03">City</label>
				      <input type="text" class="form-control" id="validationDefault03" placeholder="City" required>
				    </div>
				    <div class="col-md-3 mb-3">
				      <label for="validationDefault04">State</label>
				      <input type="text" class="form-control" id="validationDefault04" placeholder="State" required>
				    </div>
				    <div class="col-md-3 mb-3">
				      <label for="validationDefault05">Zip</label>
				      <input type="text" class="form-control" id="validationDefault05" placeholder="Zip" required>
				    </div>
				  </div>
				  <div class="form-row" style="display:flex;">
					  <div class="input-group">
						  <select class="custom-select w-50" id="inputGroupSelect04">
						    <option selected value="1">One</option>
						    <option value="2">Two</option>
						    <option value="3">Three</option>
						  </select>
						  <div class="input-group-append">
						    <button class="btn btn-success" type="button">Button</button>
						  </div>
					  </div>
					  <div class="input-group">
						  <select class="custom-select w-50" id="inputGroupSelect04">
						    <option selected value="1">USA</option>
						    <option value="2">Perú</option>
						    <option value="3">Uruguay</option>
						  </select>
						  <div class="input-group-append">
						    <button class="btn btn-warning" type="button">Button</button>
						  </div>
					  </div>
				  </div>
				  </div>
				  <div class="card w-25 mx-auto mt-5 mb-5">
				  	  <button class="btn btn-dark" type="submit">Submit form</button>
				  </div>
				</form>
			</div>
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
