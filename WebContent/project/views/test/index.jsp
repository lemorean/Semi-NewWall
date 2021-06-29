<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펄슨펄슨MVC2 index</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<style>
* {
	box-sizing: border-box;
	text-align: center;
}

div {
	border: 1px solid black;
}

.container {
	width: 400px;
	height: 80px;
	margin: auto;
}

.title {
	text-align: center;
	height: 25px;
}

.toInput {
	float: left;
	width: 25%;
	height: 55px;
	line-height: 45px;
}

.toOutput {
	float: left;
	width: 25%;
	height: 55px;
	line-height: 45px;
}

.toDelete {
	float: left;
	width: 25%;
	height: 55px;
	line-height: 45px;
}

.toModify {
	float: left;
	width: 25%;
	height: 55px;
	line-height: 45px;
}
</style>

<script>
	//제이쿼리 사용하기위해 위의 cdn 끌어옴  각버튼 누르면 데이터의 db접속이 필요한 경우 서블릿 즉 컨트롤러로 이동
	$(function() {
		$("#toInput").on("click", function() {
			location.href = "inputform.msg";
		});
		$("#toOutput").on("click", function() {
			// 결과목록 출력
			location.href = "output.msg";

		});
		$("#toDelete").on("click", function() {
			location.href = "deletelist.msg";

		});
		$("#toModify").on("click", function() {
			location.href = "modifylist.msg";

		});
	})
</script>

</head>
<body>
	<div class="container">
		<div class="title">펄슨펄슨MVC2</div>
		<div class="toInput">
			<button id="toInput">toInput</button>
		</div>
		<div class="toOutput">
			<button id="toOutput">toOutput</button>
		</div>
		<div class="toDelete">
			<button id="toDelete">toDelete</button>
		</div>
		<div class="toModify">
			<button id="toModify">toModify</button>
		</div>
	</div>
</body>
</html>