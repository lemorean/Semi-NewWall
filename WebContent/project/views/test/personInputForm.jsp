<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Input Form</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<style>
	*{box-sizing: border-box;}
	.container{border:1px solid black;margin:auto;width:180px;
				text-align:center;}
</style>

</head>
<body>

	<div class="container">
		<form action="inputproc.msg" method=get>
			<input type="text" id=name name=name>
			<input type="text" id=contact name=contact>
			<input type="submit">	
		</form>
	</div>



</body>
</html>