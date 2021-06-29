<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>outputView</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

</head>
<body>

	<table border=1 align=center>
		<tr>
			<th colspan="4">Preson List
		</tr>
		<tr>
			<th>ID
			<th>NAME
			<th>CONTACT
			<th>DATE
		</tr>
		<c:forEach var="i" items="${list}">
			<tr>
				<td>${i.id}
				<td>${i.name}
				<td>${i.contact}
				<td>${i.reg_date}
			</tr>
		</c:forEach>
		<tr>
			<td colspan="4" align=center><a href="index.jsp"><button>Back</button></a>
		</tr>
	</table>


</body>
</html>