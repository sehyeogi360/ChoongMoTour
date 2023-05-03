<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>choongmotour - 찜목록</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<!-- 아이콘 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

	<link rel="stylesheet" href="/static/css/style.css" type="text/css">
	
</head>
<body>
	<div id="wrap">
		<c:import url="/WEB-INF/jsp/include/header.jsp"/>
			<section class="contents d-flex justify-content-center">
				<div class="dibs-page">
					<h1 class="text-center">
						ChoongMo Tour Dibs Page
					</h1>
					
					<div class="mypagecontents d-flex">
					<aside class="aside1 col-3 ">
						
					<div>
						<h3><a href="/lodging/dibspage/view?id=${user.id }" class="text-dark">찜목록</a></h3>
					</div>
					<div>
						<h3><a href="/lodging/reservelist/view?id=${user.id }" class="text-dark">예약내역</a></h2>
					</div>
					<div>
						<h3><a href="/user/mypage/view?id=${user.id }" class="text-dark">내 정보수정</a></h3>
					</div>
					
					
					</aside>
					<section class="contents1 col-9 ">
					
						<label>찜목록</label><br>
						
						<div class="dibs-card-list d-flex justify-content-center flex-wrap ml-3 mt-3">
						
						<div class="dibs-card  ml-3 mt-3">
							<i class="bi bi-heart-fill text-danger d-flex justify-content-end"></i>
							<div class="dibs-profile">
								<img class="profile" width="" src="https://cdn.pixabay.com/photo/2016/03/28/09/34/bedroom-1285156_960_720.jpg " alt="호텔">
							</div>
							
							<div class="dibs-card-body">
								<div class=""><a href="/lodging/room/view?id=">ㅇㅇ호텔</a></div>
								<div class="">71,250원</div>
								<div class="">3성급</div>
							</div>
						</div>
						<div class="dibs-card ml-3 mt-3">
							<i class="bi bi-heart-fill text-danger d-flex justify-content-end"></i>
							<div class="dibs-profile">
								<img class="profile" width="" src="https://cdn.pixabay.com/photo/2016/03/28/09/34/bedroom-1285156_960_720.jpg " alt="호텔">
							</div>							
					
							<div class="dibs-card-body">
								<div class=""><a href="/lodging/room/view?id=">ㅇㅇ호텔</a></div>
								<div class="">71,250원</div>
								<div class="">3성급</div>
							</div>
						</div>
						
						<div class="dibs-card ml-3 mt-3">
							<i class="bi bi-heart-fill text-danger d-flex justify-content-end"></i>
							<div class="dibs-profile">
								<img class="profile" width="" src="https://cdn.pixabay.com/photo/2016/03/28/09/34/bedroom-1285156_960_720.jpg " alt="호텔">
							</div>							
							<div class="dibs-card-body">
								<div class=""><a href="/lodging/room/view?id=">ㅇㅇ호텔</a></div>
								<div class="">71,250원</div>
								<div class="">3성급</div>
							</div>
						</div>
						<div class="dibs-card ml-3 mt-3">
							<i class="bi bi-heart-fill text-danger d-flex justify-content-end"></i>
							<div class="dibs-profile">
								<img class="profile" width="" src="https://cdn.pixabay.com/photo/2016/03/28/09/34/bedroom-1285156_960_720.jpg " alt="호텔">
							</div>							
							
							<div class="dibs-card-body">
								<div class=""><a href="/lodging/room/view?id=">ㅇㅇ호텔</a></div>
								<div class="">71,250원</div>
								<div class="">3성급</div>
							</div>
						</div>
						
						
						
						</div>
					</section>
					
					</div>
				
				</div>
			
			</section>
	
	
		<c:import url="/WEB-INF/jsp/include/footer.jsp"/>
	</div>

</body>
</html>