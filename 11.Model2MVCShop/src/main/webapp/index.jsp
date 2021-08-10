<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>


<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- ///////////////////////////// 로그인시 Forward  /////////////////////////////////////// -->
 <c:if test="${ ! empty user }">
 	<jsp:forward page="main.jsp"/>
 </c:if>
 <!-- //////////////////////////////////////////////////////////////////////////////////////////////////// -->


<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- 참조 : http://getbootstrap.com/css/   -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style></style>
   	
   	<!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
		
		//============= 회원원가입 화면이동 =============
		$( function() {
			//==> 추가된부분 : "addUser"  Event 연결
			$("a[href='#' ]:contains('회원가입')").on("click" , function() {
				self.location = "/user/addUser"
			});
		});
		
		//============= 로그인 화면이동 =============
		$( function() {
			//==> 추가된부분 : "addUser"  Event 연결
			$("a[href='#' ]:contains('로 그 인')").on("click" , function() {
				self.location = "/user/login"
			});
		});
		
		
	</script>	
	<style type="text/css">
		.product-image {
  		width: 100%;
  		height: 245px;
						}
						
		.product-image .img-fluid {
  		max-width: 100%;
  		height: 100%;
								}
	
	</style>
</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<div class="navbar  navbar-default">
		
        <div class="container">
        
        	<a class="navbar-brand" href="#" style="font-size:30px;font-family:'더페이스샵 잉크립퀴드체';">Hyewon's MiniShop</a>
			
			<!-- toolBar Button Start //////////////////////// -->
			<div class="navbar-header">
			    <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#target">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			    </button>
			</div>
			<!-- toolBar Button End //////////////////////// -->
			
			<div class="collapse navbar-collapse"  id="target">
	             <ul class="nav navbar-nav navbar-right">
	                 <li><a href="#" style="font-size:20px;font-family:'더페이스샵 잉크립퀴드체';">회원가입</a></li>
	                 <li><a href="#" style="font-size:20px;font-family:'더페이스샵 잉크립퀴드체';">로 그 인</a></li>
	           	</ul>
	       </div>
   		
   		</div>
   	</div>
   	<!-- ToolBar End /////////////////////////////////////-->
   	
	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">
		
		<!-- 다단레이아웃  Start /////////////////////////////////////-->
		<div class="row">
	
			<!--  Menu 구성 Start /////////////////////////////////////-->     	
			<div class="col-md-3">
		        
		       	<!--  회원관리 목록에 제목 -->
				<div class="panel panel-pink-100">
					<div class="panel-heading" style="font-size:23px;font-family:'더페이스샵 잉크립퀴드체';">
						<i class="glyphicon glyphicon-heart" ></i> 회원관리
         			</div>
         			<!--  회원관리 아이템 -->
					<ul class="list-group">
						 <li class="list-group-item">
						 	<a href="#" style="font-size:20px;font-family:'더페이스샵 잉크립퀴드체';">개인정보조회</a> <i class="glyphicon glyphicon-ban-circle"></i>
						 </li>
						 <li class="list-group-item">
						 	<a href="#" style="font-size:20px;font-family:'더페이스샵 잉크립퀴드체';">회원정보조회</a> <i class="glyphicon glyphicon-ban-circle"></i>
						 </li>
					</ul>
		        </div>
               
               
				<div class="panel panel-pink">
					<div class="panel-heading" style="font-size:23px;font-family:'더페이스샵 잉크립퀴드체';">
							<i class="glyphicon glyphicon-briefcase"></i> 판매상품관리
         			</div>
					<ul class="list-group">
						 <li class="list-group-item">
						 	<a href="#" style="font-size:20px;font-family:'더페이스샵 잉크립퀴드체';">판매상품등록</a> <i class="glyphicon glyphicon-ban-circle"></i>
						 </li>
						 <li class="list-group-item">
						 	<a href="#" style="font-size:20px;font-family:'더페이스샵 잉크립퀴드체';">판매상품관리</a> <i class="glyphicon glyphicon-ban-circle"></i>
						 </li>
					</ul>
		        </div>
               
               
				<div class="panel panel-pink">
					<div class="panel-heading" style="font-size:23px;font-family:'더페이스샵 잉크립퀴드체';">
							<i class="glyphicon glyphicon-shopping-cart"></i> 상품구매
	    			</div>
					<ul class="list-group">
						 <li class="list-group-item"><a href="#" style="font-size:20px;font-family:'더페이스샵 잉크립퀴드체';">상품검색</a></li>
						  <li class="list-group-item">
						  	<a href="#" style="font-size:20px;font-family:'더페이스샵 잉크립퀴드체';">구매이력조회</a> <i class="glyphicon glyphicon-ban-circle"></i>
						  </li>
						 <li class="list-group-item">
						 	<a href="#" style="font-size:20px;font-family:'더페이스샵 잉크립퀴드체';">최근본상품</a> <i class="glyphicon glyphicon-ban-circle"></i>
						 </li>
					</ul>
				</div>
				
			</div>
			<!--  Menu 구성 end /////////////////////////////////////-->   

	 	 	<!--  Main start /////////////////////////////////////-->   		
	 	 	<div class="col-md-9">
				<div class="jumbotron" style="background-color:white;">
			  		<img src="https://mblogthumb-phinf.pstatic.net/MjAyMDAxMjBfMSAg/MDAxNTc5NDQ5NDA4Njc0.FYohCwN29zWB9HW6YtYga-39IvR5L3mwGL8nY8FeWIAg.0FpBGwGJ-ozx582-C58WCIQF7LpOs5pq67Tr6fDuPHog.JPEG.casachampion/Wallpaper-About-Time-18.jpg?type=w800" 
			  				class="img-fluid" style="width:700px; height:400px;" alt="...">			  	
			  		<p style="text-align:center; font-size:50px; font-family:'더페이스샵 잉크립퀴드체'; ">시간은 당신을 기다려주지 않는다.</p>			  	
			  		
			  		 <!--  <div class="text-center">
			  			<a class="btn btn-default btn-lg" href="#" role="button" style="font-size:20px;font-family:'더페이스샵 잉크립퀴드체';">회원가입</a>
			  			<a class="btn btn-default btn-lg" href="#" role="button" style="font-size:20px;font-family:'더페이스샵 잉크립퀴드체';">로 그 인</a>
			  		</div>
			  	-->
			  	</div>
	        </div>
	   	 	<!--  Main end /////////////////////////////////////-->   		
	 	 	
		</div>
		<!-- 다단레이아웃  end /////////////////////////////////////-->
		
	</div>
	<!--  화면구성 div end /////////////////////////////////////-->

</body>

</html>