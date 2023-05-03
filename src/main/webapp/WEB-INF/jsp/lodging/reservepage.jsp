<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>         
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   <!-- 포맷라이브러리 추가 -->     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>choongmotour - 예약 페이지</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<!-- 아이콘 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

	<link rel="stylesheet" href="/static/css/style.css" type="text/css">
	
</head>
<body>
	<div id = "wrap">
	<c:import url="/WEB-INF/jsp/include/header.jsp"/>
		<section class="contents d-flex justify-content-center">
			<div class="reserve-page">
				<h1 class="text-center">
					ChoongMo Tour Reserve Page
				</h1>
			
			
				<div class="reservepagecontents ">
					
					<div class=""><h2>${lodging.roomName }</h2></div><br>
					<div class=""><h3>${room.size }</h3></div>
					
					<div class="d-flex mt-3">
						<div class="" >체크인 2023-05-01 15:00</div> ~
						<div class="ml-3">체크아웃 2023-05-01 11:00</div>
					
					</div>
					
					<div class = "">
						<label class="col-4 mt-4">예약자 이름</label><input type="text" id="nameInput" value = "${user.name}"  class="form-control mt-4 ">
						<label class="col-4 mt-4">전화번호</label><input type="text" id="phoneNumberInput" value = "${user.phoneNumber}" class="form-control mt-4 ">
					</div>
					<hr>
					
					
					<label class="col-4 mt-4">총 결제 금액 </label> <strong>${room.price }원</strong><!-- 이것도 fmt활용해보기 -->
					
					
					<hr>
					<div class="payselect mt-3">
						<div class=""> 결제수단을 선택하세요. </div>
						<select class="form-control col-5 mt-3" id="paySelector">
							
                            <option value="">결제수단</option>
                            <option value="kakao">카카오페이</option>
                            <option value="naver">네이버페이</option>
                            <option value="samsung">삼성페이</option>
                            <option value="card">카드</option>
                       
                 </select>
					
					</div>
					
					
					
					<div class="check-box mt-3">
						<label>전체 선택<input type="checkbox" id="allCheck"></label> <br>
				        <label>개인정보 활용 동의<input type="checkbox" name="check" value="check1"></label><br>
				        <label>서비스 이용 동의<input type="checkbox" name="check" value="check2"></label><br>
				        <label>마케팅 활용 동의<input type="checkbox" name="check" value="check3"></label>
					
					</div>
					
					
					<div class="text-center">
					
						<button id = "payBtn" type="button"  class="btn btn-danger col-8 ">결제하기</button>
					</div>
				</div>
			
			</div>
		
		
		
		
		</section>
	
	
	
	
	<c:import url="/WEB-INF/jsp/include/footer.jsp"/>
	
	</div>
	<script>
	$(document).ready(function(){
		
		$("#payBtn").on("click", function(){
			
			//유효성검사 이름, 전화번호, 결제수단, 전체 동의 
		});
		
		
		 $("#allCheck").on("change", function() {
             // 내 자신이 체크 되었는지 안되었는지
             if($(this).is(":checked")) {
                 $("input[name='check']").prop("checked", true);
             } else {
                 $("input[name='check']").prop("checked", false);
             }
         });
		
		
	});
	
	
	</script>


</body>
</html>