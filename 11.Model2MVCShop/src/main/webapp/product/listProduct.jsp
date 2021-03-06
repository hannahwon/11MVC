<%@ page contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="EUC-KR">

	<!-- 참조 : http://getbootstrap.com/css/   참조 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
	

	 <!-- jQuery UI toolTip 사용 CSS-->
 	 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  	 <!-- jQuery UI toolTip 사용 JS-->
 	 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
	  body {
            padding-top : 50px;
        }
    </style>
    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->	
	<script type="text/javascript">	
	
	let menu = "<c:out value='${menu}'/>";
	
	//=============    검색 / page 두가지 경우 모두  Event  처리 ============= 
	function fncGetList(currentPage) {
		$("#currentPage").val(currentPage)
		$("form").attr("method", "POST").attr("action", "/product/listProduct").submit();
	}

	//============= "검색"  Event  처리 =============	
	$(function() {
		$(".btn btn-default:contains('검색')").on("click", function() {
			fncGetList();
		});
	});
	
	//============= prodName 에 상품정보보기  Event  처리(Click) =============	
	$(function() {	
		$( "td:nth-child(2)" ).on("click" , function() {
			//self.location = "/product/getProduct/prodNo="+prodNo+"/menu="+menu;
			var prodNo = $(this).next().val();
			self.location ="/product/getProduct?prodNo="+prodNo+"&menu="+menu;
		});	
		$("td:nth-child(2)").css("color", "blue");
	});
	//============= prodName 에 상품정보보기  Event  처리(double Click) =============	
		/*$(function() {
			//alert(menu);
			$("td:nth-child(2)").on("click", function() {
			//$("td:nth-child(5) > i").on("click", function() {
					
					//let prodNo = $(this).children('input').val();
					//var prodNo = $(this).next().val();
					
					$.ajax(
							{
							url :"/product/json/getProduct/"+prodNo + "/"+menu ,
							method : "GET",
							dataType : "json" ,
							headers : {
								"Accept" : "application/json",
								"Content-Type" : "application/json"
							},
							success : function(JSONData , status){
							
							var displayValue = "<h6>"
													+"상품번호 : "+JSONData.prodNo+"<br/>"
													+"상품명 : "+JSONData.prodName+"<br/>"
													+"상품이미지 : "+JSONData.fileName+"<br/>"
													+"상품상세정보 : "+JSONData.prodDetail+"<br/>"
													+"제조일자 : "+JSONData.manuDate+"<br/>"
													+"가격 : "+JSONData.price+"<br/>"
													+"등록일자 : "+JSONData.regDate+"<br/>"
													+"</h3>";
								alert(displayValue)					
								$("h6").remove();
								$("#"+prodNo+"").html(displayValue);
													
							}
								
						});		
				});

			//==> userId LINK Event End User 에게 보일수 있도록 
			$( ".ct_list_pop td:nth-child(3)" ).css("color" , "blue");
			$("h7").css("color" , "blue");
				
			//==> 아래와 같이 정의한 이유는 ??
			$(".ct_list_pop:nth-child(4n+6)").css("background-color", "whitesmoke");

		});*/
	</script>

</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	
	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">
	
		<div class="page-header text-info">
	       <h3>상품목록조회</h3>
	    </div>
	    
	    <!-- table 위쪽 검색 Start /////////////////////////////////////-->
	    <div class="row">
	    
		    <div class="col-md-6 text-left">
		    	<p class="text-primary">
		    		전체  ${resultPage.totalCount } 건수, 현재 ${resultPage.currentPage}  페이지
		    	</p>
		    </div>
		    
		<div class="col-md-6 text-right">
			<form class="form-inline" name="detailForm">
		
		  <input type="hidden" name="menu" value="${menu}"/>

				
		<div class="form-group">
			 <select class="form-control" name="searchCondition" >
			
					<option value="0"
						${ ! empty search.searchCondition && search.searchCondition=='0' ? "selected" : "" }>상품번호</option>
					<option value="1"
						${ ! empty search.searchCondition && search.searchCondition=='1' ? "selected" : "" }>상품명</option>
					<option value="2"
						${ ! empty search.searchCondition && search.searchCondition=='2' ? "selected" : "" }>상품가격</option>
			</select> 
		</div>
		
		<div class="form-group">
			<label class="sr-only" for="searchKeyword">검색어</label>
			<input type="text" class="form-control" id="searchKeyword" name="searchKeyword"  placeholder="검색어"
						value="${! empty search.searchKeyword ? search.searchKeyword : ''}" />
					
		</div>
				  
			<button type="button" class="btn btn-default">검색</button>	
			
			<!-- PageNavigation 선택 페이지 값을 보내는 부분 -->
				  <input type="hidden" id="currentPage" name="currentPage" value=""/>
				  
				</form>
	    	</div>
	    	
		</div>
		<!-- table 위쪽 검색 Start /////////////////////////////////////-->
		
		
      <!--  table Start /////////////////////////////////////-->
      <table class="table table-hover table-striped" >	
				

			<thead>
				<tr>
					<th align="center">No</th>
					<th align="left">상품명<br>
					<h7>(id click:상세정보)</h7></th>
					<th align="left">가격</th>
					<th align="left">등록일</th>
					<th align="left">현재상태</th>
				</tr>
			</thead>
				
			<tbody>
			
				<c:set var="i" value="0" />
				<c:forEach var="product" items="${list}">
					<c:set var="i" value="${i+1}" />
					<tr>
						<td align="center">${i}</td>
						<td align="left" title="Click : 상품정보 보기">${product.prodName}</td>
						<input type="hidden" value="${product.prodNo}"/>
						<td align="left">${product.price}</td>
						<td align="left">${product.regDate}</td>
						<td align="left">${purchase.tranCode}판매중</td>
						<td align="left">
			  				<i class="glyphicon glyphicon-ok" id= "${product.prodNo}"></i>
							
						</td>
					</tr>
				</c:forEach>
				
				</tbody>
				
			</table>
			 <!--  table End /////////////////////////////////////-->
	  
 		</div>
 		<!--  화면구성 div End /////////////////////////////////////-->
		
			<!-- PageNavigation Start... -->			
			<jsp:include page="../common/pageNavigator_new.jsp" />
			<!-- <input type="hidden" id="currentPage" name="currentPage" value="" /> --> 
			<!--  페이지 Navigator 끝 -->

</body>
</html>

