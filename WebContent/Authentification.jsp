<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="pages/render/head.jspf"%>
<body>
	<%@ include file="pages/render/header.jspf"%>

	<h2>Se connecter</h2>

	<form action="Authentification" method="post">
		<div>
			<label for="login">Login : <input type="text" name="login"
				value="" placeholder="login..." />
			</label>
		</div>
		<div>
			<label for="password">Login : <input type="password"
				name="password" value="" />
			</label>
		</div>
		<input type="submit" name="valider" value="Valider" />
	</form>
</body>
</html>