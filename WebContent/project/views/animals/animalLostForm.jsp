<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>2조 세미 프로젝트</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/project/layout/css/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/project/layout/css/lostAnimal.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
</head>
<%@ include file="../../layout/header.jsp"%>

<div class="container">
			<div class="contents">
				<section id="lostSection">
				<form action="${pageContext.request.contextPath}/lostAnimal.lost" method="post" enctype="multipart/form-data">
				<div id="mainTitle">실종 신고</div>
				<div class="animalInfo">동물 정보</div>
				<div id="lostName">
				<span>동물 이름:</span>
				<input type="text" name="lostName" class="inpform" >
				<span id="cate">구분: </span>
				<div class="rd_group">
										<div class="inp_rd">
											<input type="radio" id="rd1" name="lostCategory" value="dog" >
											<label for="rd1">개</label>
										</div>
										<div class="inp_rd">
											<input type="radio" id="rd2" name="lostCategory" value="cat">
											<label for="rd2">고양이</label>
										</div>
									</div>
				</div>
				<div id="animalDetail">
				<span>나이:</span><input type="text" name="lostAge" class="inpform toMargin" >
				<span class="kindAndDate">품종:</span><input type="text" name="lostKind" class="inpform toMargin">
				<span class="kindAndDate">성별:</span>
				<div class="inp_slct">
										<select name="lostGender" id="lostGender">
											<option value="">선택</option>
											<option value="F">암컷</option>
											<option value="M">숫컷</option>
										</select>
									</div>
				</div>
				
				
				<div class="animalInfo">기본 정보</div>
				<div id="lostDateId">
				<span id="lostDates">실종 날짜:</span><input type="date" id="lostDate" name="lostDate" class="inpform toMargin" min="2021-01-01"></div>
				<div id="contentArea">	
				<div id="content">내용</div>
				<textarea class="txtareaform" name="lostContent" id="" cols="30" rows="4" placeholder="내용을 입력해 주세요 (특징, 자세한 외형 등등)"></textarea>
				</div>
				
				

			<div class="map_wrap">
				<div id="map"
					style="width: 60%; height: 60%; position: relative; overflow: hidden;"></div>

				<div class="hAddr">
					<span id="title">주소정보</span>
					<!-- <span id="centerAddr"></span> -->


					<input type="text" class="inpform" placeholder="지도에 주소로 검색..."
						id="resultAdd">
				</div>

				<button type="button" id="searchBtn">
					<i class="fas fa-search"></i>
				</button>
			</div>
			
			<div id="animalImage">
				이미지: <input type="file" name="animalImage" onChange="imageChoose(this)">
				</div> 
				   <div class="upload-img">
                        <img src="${pageContext.request.contextPath}/project/layout/resources/images/img01.jpeg" alt="" id="imageUploadPreview" />
                   </div>
			<input type="hidden" name="addResult" id="hiddenInput">
			<input type="submit" class="btn btn-primary" value="완료">		
			</form>
				</section>
			</div>
		</div>
		
		
		<!-- footer -->
<footer class="footer">
			<p>Copyright &copy; Kh semi project by group 2</p>
		</footer>
	
	</div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a0476da8a7dcd0ed6d9041728ce41a41&libraries=services"></script>
	<script src="${pageContext.request.contextPath}/project/layout/js/jquery-3.6.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/project/layout/js/common.js"></script>
	<script src="${pageContext.request.contextPath}/project/layout/js/animalLostForm.js"></script>
	<script>
function imageChoose(obj){
	let f = obj.files[0];
	if(!f.type.match("image.*")){
		alert("이미지를 등록해야 됨");
		return;
	}
	let reader = new FileReader();
	reader.onload = (e) =>{
		$("#imageUploadPreview").attr('src',e.target.result);
	}
	reader.readAsDataURL(f)
	
}
	 
	</script>
	</body>
</html>