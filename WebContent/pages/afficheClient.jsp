<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

/* Import de la classe Client */
<%@ page import="com.beans.Client" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Affiche CLient JSP</title>
</head>
<body>
	<jsp:useBean id="client" class="com.beans.Client" scope="request" />
	/* Mappe les attributs du formulaire sur le bean Client : nom = attribut*/
	<jsp:setProperty property="*" name="client"/>
</body>
</html>