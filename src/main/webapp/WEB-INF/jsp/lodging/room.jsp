<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>choongmotour - 객실화면</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<!-- 아이콘 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
	
	<link rel="stylesheet" href="/static/css/style.css" type="text/css">
	
	<!-- datepicker -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
</head>
<body>
	<div id = "wrap">
	
	<c:import url="/WEB-INF/jsp/include/header.jsp"/>
		<section class="contents d-flex justify-content-center">
			<div class="room-page">
				<h1 class="text-center">
					ChoongMo Tour Room Page
				</h1>
				
				
				
				<div class="lodging-profile2 d-flex align-items-center">
						<img class="profile" width="" src="${lodging.imagePath } " alt="호텔">
				
				
				</div><br>
				
				<div class="text-center">
					<h2>${lodging.roomName }</h2>
				</div><br>
				<label class="mt-3">체크인 </label>
		        <input type="text" id="startDate" autocomplete="off"><!--각각 객체를 만들어야 하므로 id값 부여.-->
		        <label class="mt-3">체크아웃 </label>
		        <input type="text" id="endDate" autocomplete="off"><br>
				
				
				
				<!-- 객실리스트 시작 -->
				<div class="room-card-list">
					<!-- 객실 카드 -->
	
					
					<div class="room-card d-flex ml-3 mt-3">
						<div class="room-profile ml-3 mt-3">
							<img class="profile" width="250" src="https://cdn.pixabay.com/photo/2016/03/28/09/34/bedroom-1285156_960_720.jpg" alt="호텔">
						</div>
							
						<div class="room-card-body ml-3 mt-3">
							<div class="">싱글룸</div>
							<div class="mt-3">90000원</div>
							
							<div class = "buttonlist text-center">
							<button id = "modalBtn" type="button"  class="btn btn-primary modal-btn btn-sm col-10" data-room-id="${room.id }">상세정보</button><br>
							<a href="/user/reservepage/view?id=" class="btn btn-primary reserve-btn btn-sm mt-3 col-10" type="button" data-room-id="${room.id }">예약하기</a>
							</div>
						</div>
					</div>
					
					

					
				</div>
	
			</div>
			
		</section>
		
		<c:import url="/WEB-INF/jsp/include/footer.jsp"/>
		
	</div>
	<script>
	 $(document).ready(function() {
		 
		 
		 $(".reserve-btn").on("click", function(){
			
			 let id = $(this).data("room-id");
			 //날짜
			 //유저id???
		 });
		 
		 
		 $("#startDate").datepicker({//datepicker 요일 한글로 검색
             dateFormat:"yy-mm-dd",
            
             dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
             currentText: '오늘 날짜' , 
            
             showButtonPanel:true,
             closeText: 'done',
             minDate: 0,//오늘날짜 부터
             onSelect:function(selectedDate) {
                 
                 $("#endDate").datepicker("option", "minDate", selectedDate);

                 }

         });

       

         $("#endDate").datepicker({//종료일
             dateFormat:"yy-mm-dd",
           
             dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
             currentText: '오늘 날짜' , // 오늘 날짜로 이동하는 버튼 패널
             showButtonPanel:true,//버튼보이기
             closeText: 'done',
             minDate:'+1D',//오늘날짜 다음 부터
             //beforeShow: customRange
              onSelect:function(selectedDate) {
                 
                 $("#startDate").datepicker("option", "maxDate", selectedDate );
                 
             
              }
            

         });
		 
		 
	 });
	</script>


</body>
</html>