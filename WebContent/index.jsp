<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<%@ include file="pages/render/head.jspf"%>
<body>
<%@ include file="pages/render/header.jspf"%>

<h2>Il est : <%= new java.util.Date().toString() %></h2>

<h3>Formulaire pour afficher un client (POST / JSP AfficheClient)</h3>
<form action="afficherLeClient" method="post">
<div><span>Identifiant :</span><span><input type="text"
name="id" value="" /></span></div>
<div><span>Nom :</span><span><input type="text" name="nom"
value="" /></span></div>
<div><span>Prénom :</span><span><input type="text"
name="prenom" value="" /></span></div>
<div><span>Mail :</span><span><input type="text" name="mail"
value="" /></span></div>
<div><input type="submit" name="valider" value="Valider" />
</div>
</form>
</body>
</html>