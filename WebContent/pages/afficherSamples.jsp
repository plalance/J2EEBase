<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="render/head.jspf"%>
<body>
	<%@ include file="render/header.jspf"%>

	<sql:setDataSource driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/php_sf3" user="root" password="" />

	<sql:query
		sql="
SELECT sample.id_sample, sample.label, sample.description, sample.age
FROM sample ORDER BY id_sample ASC"
		var="listeSample" />

	<c:forEach var="sample" begin="0" items="${listeSample.rows}">
		<ul>
			<li>Id :<c:out value="${sample.id_sample}" /></li>
			<li>Label :<c:out value="${sample.label}" /></li>
			<li>Description : <c:out value="${sample.description}" /></li>
			<li>Age : <c:out value="${sample.age}" /></li>
		</ul>
	</c:forEach>
</body>
</html>