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

<h3>Exemple tag JSTL c</h3>

<c:set var="maVariable" value="ma valeur avec JSTL" scope="page" />
<c:out value="${maVariable}" /><br/>
<c:if test="${1==1}">Une conditionnelle opérationnelle</c:if>
<c:if test="${1==2}">Une conditionnelle non affichée</c:if><br/>
<c:forEach begin="1" end="4" var="i">
<c:out value="${i}"/><br/>
</c:forEach>
<br/>
<%-- <c:import url="/message.txt" var="message"/>
<c:out value="${message}"/> --%>

</body>
</html>