<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>


<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- ///////////////////////////// �α��ν� Forward  /////////////////////////////////////// -->
 <c:if test="${ ! empty user }">
 	<jsp:forward page="main.jsp"/>
 </c:if>
 <!-- //////////////////////////////////////////////////////////////////////////////////////////////////// -->


<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- ���� : http://getbootstrap.com/css/   -->
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
		
		//============= ȸ�������� ȭ���̵� =============
		$( function() {
			//==> �߰��Ⱥκ� : "addUser"  Event ����
			$("a[href='#' ]:contains('ȸ������')").on("click" , function() {
				self.location = "/user/addUser"
			});
		});
		
		//============= �α��� ȭ���̵� =============
		$( function() {
			//==> �߰��Ⱥκ� : "addUser"  Event ����
			$("a[href='#' ]:contains('�� �� ��')").on("click" , function() {
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
        
        	<a class="navbar-brand" href="#" style="font-size:30px;font-family:'�����̽��� ��ũ������ü';">Hyewon's MiniShop</a>
			
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
	                 <li><a href="#" style="font-size:20px;font-family:'�����̽��� ��ũ������ü';">ȸ������</a></li>
	                 <li><a href="#" style="font-size:20px;font-family:'�����̽��� ��ũ������ü';">�� �� ��</a></li>
	           	</ul>
	       </div>
   		
   		</div>
   	</div>
   	<!-- ToolBar End /////////////////////////////////////-->
   	
	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
		
		<!-- �ٴܷ��̾ƿ�  Start /////////////////////////////////////-->
		<div class="row">
	
			<!--  Menu ���� Start /////////////////////////////////////-->     	
			<div class="col-md-3">
		        
		       	<!--  ȸ������ ��Ͽ� ���� -->
				<div class="panel panel-pink-100">
					<div class="panel-heading" style="font-size:23px;font-family:'�����̽��� ��ũ������ü';">
						<i class="glyphicon glyphicon-heart" ></i> ȸ������
         			</div>
         			<!--  ȸ������ ������ -->
					<ul class="list-group">
						 <li class="list-group-item">
						 	<a href="#" style="font-size:20px;font-family:'�����̽��� ��ũ������ü';">����������ȸ</a> <i class="glyphicon glyphicon-ban-circle"></i>
						 </li>
						 <li class="list-group-item">
						 	<a href="#" style="font-size:20px;font-family:'�����̽��� ��ũ������ü';">ȸ��������ȸ</a> <i class="glyphicon glyphicon-ban-circle"></i>
						 </li>
					</ul>
		        </div>
               
               
				<div class="panel panel-pink">
					<div class="panel-heading" style="font-size:23px;font-family:'�����̽��� ��ũ������ü';">
							<i class="glyphicon glyphicon-briefcase"></i> �ǸŻ�ǰ����
         			</div>
					<ul class="list-group">
						 <li class="list-group-item">
						 	<a href="#" style="font-size:20px;font-family:'�����̽��� ��ũ������ü';">�ǸŻ�ǰ���</a> <i class="glyphicon glyphicon-ban-circle"></i>
						 </li>
						 <li class="list-group-item">
						 	<a href="#" style="font-size:20px;font-family:'�����̽��� ��ũ������ü';">�ǸŻ�ǰ����</a> <i class="glyphicon glyphicon-ban-circle"></i>
						 </li>
					</ul>
		        </div>
               
               
				<div class="panel panel-pink">
					<div class="panel-heading" style="font-size:23px;font-family:'�����̽��� ��ũ������ü';">
							<i class="glyphicon glyphicon-shopping-cart"></i> ��ǰ����
	    			</div>
					<ul class="list-group">
						 <li class="list-group-item"><a href="#" style="font-size:20px;font-family:'�����̽��� ��ũ������ü';">��ǰ�˻�</a></li>
						  <li class="list-group-item">
						  	<a href="#" style="font-size:20px;font-family:'�����̽��� ��ũ������ü';">�����̷���ȸ</a> <i class="glyphicon glyphicon-ban-circle"></i>
						  </li>
						 <li class="list-group-item">
						 	<a href="#" style="font-size:20px;font-family:'�����̽��� ��ũ������ü';">�ֱٺ���ǰ</a> <i class="glyphicon glyphicon-ban-circle"></i>
						 </li>
					</ul>
				</div>
				
			</div>
			<!--  Menu ���� end /////////////////////////////////////-->   

	 	 	<!--  Main start /////////////////////////////////////-->   		
	 	 	<div class="col-md-9">
				<div class="jumbotron" style="background-color:white;">
			  		<img src="https://mblogthumb-phinf.pstatic.net/MjAyMDAxMjBfMSAg/MDAxNTc5NDQ5NDA4Njc0.FYohCwN29zWB9HW6YtYga-39IvR5L3mwGL8nY8FeWIAg.0FpBGwGJ-ozx582-C58WCIQF7LpOs5pq67Tr6fDuPHog.JPEG.casachampion/Wallpaper-About-Time-18.jpg?type=w800" 
			  				class="img-fluid" style="width:700px; height:400px;" alt="...">			  	
			  		<p style="text-align:center; font-size:50px; font-family:'�����̽��� ��ũ������ü'; ">�ð��� ����� ��ٷ����� �ʴ´�.</p>			  	
			  		
			  		 <!--  <div class="text-center">
			  			<a class="btn btn-default btn-lg" href="#" role="button" style="font-size:20px;font-family:'�����̽��� ��ũ������ü';">ȸ������</a>
			  			<a class="btn btn-default btn-lg" href="#" role="button" style="font-size:20px;font-family:'�����̽��� ��ũ������ü';">�� �� ��</a>
			  		</div>
			  	-->
			  	</div>
	        </div>
	   	 	<!--  Main end /////////////////////////////////////-->   		
	 	 	
		</div>
		<!-- �ٴܷ��̾ƿ�  end /////////////////////////////////////-->
		
	</div>
	<!--  ȭ�鱸�� div end /////////////////////////////////////-->

</body>

</html>