<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="pages/render/head.jspf"%>
<body>
	<%@ include file="pages/render/header.jspf"%>

	<%@ page import="com.beans.Client"%>
	
	<% out.println(request.getAttribute("message")); %>

	<jsp:useBean id="client" class="com.beans.Client"
		scope="request" />
	<h4>
		Bienvenue client :<br /> id :
		<jsp:getProperty property="id" name="client" />
		<br /> login :
		<jsp:getProperty property="login" name="client" />
		<br /> Nom :
		<jsp:getProperty property="nom" name="client" />
		<br /> Prénom :
		<jsp:getProperty property="prenom" name="client" />
		<br /> mail :
		<jsp:getProperty property="mail" name="client" />
	</h4>
</body>
</html>