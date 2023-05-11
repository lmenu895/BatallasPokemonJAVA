<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap theme -->
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<title>Registro de usuario</title>
<link rel="icon" type="image/x-icon" href="images/favicon.ico">
</head>
<body>
	<div class="container">
		<div id="loginbox" style="margin-top: 50px;"
			class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<form:form action="registrarme" method="POST"
				modelAttribute="usuario">
				<h3 class="form-signin-heading">Nuevo Usuario</h3>
				<hr class="colorgraph">
				<br>
				<label for="usuario">Nombre de Usuario</label>
				<form:input path="usuario" type="text" id="email"
					class="form-control" />
				<label for="usuario">Direccion de correo electronico</label>
				<form:input path="email" type="email" id="email"
					class="form-control" />
				<label for="usuario">Contraseņa</label>
				<form:input path="password" type="password" id="password"
					class="form-control" />
				<button id="btn-registrarme"
					class="btn btn-lg btn-primary btn-block" Type="Submit">Registrarme</button>
			</form:form>

			<c:if test="${not empty error}">
				<h4>
					<span>${error}</span>
				</h4>
				<br>
			</c:if>
		</div>
	</div>

	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
	</script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>