<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete List</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>

	<table border=1 align=center>
		<tr>
			<th colspan=4>Person List		
		</tr>
		<tr>
			<th>ID
			<th>NAME
			<th>CONTACT
			<th>REG_DATE
		</tr>
		<c:forEach var="item" items="${list}">
			<!-- var="i"라고 해도 됨. 변수명은 자유롭게~~! -->
			<tr>
				<td>${item.id}
				<td>${item.name}
				<td>${item.contact}
				<td>${item.reg_date}
			</tr>
		</c:forEach>
		<tr>
			<td colspan=4>
			<form action="deleteproc.msg" method=get>
				<input type=text name=id id=id placeholder="Delete ID">
				<button>Delete</button>
				<a href="index.jsp"><button type="button">back</button></a>
			</form>
			
		</tr>
	
	
	</table>

</body>
</html>