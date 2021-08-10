<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>


<!DOCTYPE html>

<html lang="ko">

<head>
	<meta charset="EUC-KR">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<link rel="stylesheet" href="/css/admin.css" type="text/css">
	
<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  	<link rel="stylesheet" href="/resources/demos/style.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
       body > div.container{
        	border: 3px solid #D6CDB7;
        	padding-top : 30px;
            margin-top: 10px;
        }
    </style>

	 <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
	//============= "등록"  Event 연결 =============
	$(function(){
		//$("td.ct_btn01:contains('등록')").on("click", function(){
			$( "button.btn.btn-primary" ).on("click" , function() {	
			fncAddProduct();
		});
		
	});

	//============= "취소"  Event 처리 및  연결 =============
	$(function(){
		//$("td.ct_btn01:contains('취소')").on("click", function(){
			$("a[href='#' ]").on("click" , function() {
			$("form")[0].reset();
		});	
	});
	//============= "캘린더"  Event 연결 =============
	$( function() {
	    $( "#manuDate" ).datepicker({dateFormat : "yy-mm-dd"});
	  });
	//============="파일업로드" Event 연결 =============
	var input = $( "input:file" ).css({
  background: "yellow",
  border: "3px red solid"
	});
	$( "div" )
  		.text( "For this type jQuery found " + input.length + "." )
  		.css( "color", "red" );
	$( "form" ).submit(function( event ) {
  	event.preventDefault();
	});
	function fncAddProduct(){

		var name=$("input[name='prodName']").val();
		var detail=$("input[name='prodDetail']").val();
		var manuDate=$("input[name='manuDate']").val();
		var price=$("input[name='price']").val();
	
		if(name == null || name.length<1){
			alert("상품명은 반드시 입력하여야 합니다.");
			return;
		}
		if(detail == null || detail.length<1){
			alert("상품상세정보는 반드시 입력하여야 합니다.");
			return;
		}
		if(manuDate == null || manuDate.length<1){
			alert("제조일자는 반드시 입력하셔야 합니다.");
			return;
		}
		if(price == null || price.length<1){
			alert("가격은 반드시 입력하셔야 합니다.");
			return;
		}
		
		

	$("form").attr("method", "POST").attr("action", "/product/addProduct").submit();
}


</script>

</head>

<body>


	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
   	
   	<!--  화면구성 div Start /////////////////////////////////////-->
   	<div class = "container">
   	
   	<h1 class="bg-primary text-center">상 품 등 록</h1>
   	
   	<!-- form Start /////////////////////////////////////-->
   	
<form class="form-horizontal">
		
		  <div class="form-group">
		    <label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">상품명</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodName" name="prodName" placeholder="상품명을 입력하세요" >
		    </div>
		 </div>

		<div class="form-group">
		    <label for="prodDetail" class="col-sm-offset-1 col-sm-3 control-label">상품상세정보</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodDetail" name="prodDetail" placeholder="상품상세정보를 입력하세요">
		    </div>
		 </div>

		<div class="form-group">
		    <label for="manuDate" class="col-sm-offset-1 col-sm-3 control-label">제조일자</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="manuDate" name="manuDate" placeholder="제조일자를 선택하세요" readonly>
		    </div>
		 </div>
		
	
		<div class="form-group">
		    <label for="price" class="col-sm-offset-1 col-sm-3 control-label">가격</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="price" name="price" placeholder="상품가격을 입력하세요">
		    </div>
		 </div>
		 
		 <div class="form-group">
		    <label for="fileName" class="col-sm-offset-1 col-sm-3 control-label">상품이미지</label>
		    <div class="col-sm-4"> 
		      <input type="file" class="form-control" id="fileName" name="fileName" placeholder="상품이미지를 등록하세요">
		     <input type="hidden">
  			 <input type="image">
 			 <input type="password">
  			 <input type="radio">
 			 <input type="reset">
		    </div>
		 </div>
	
		<div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		      <button type="button" class="btn btn-primary"  >등&nbsp;록</button>
			  <a class="btn btn-primary btn" href="#" role="button">취&nbsp;소</a>
		    </div>
		  </div>
		</form>
		<!-- form Start /////////////////////////////////////-->
		
		
	</div>
	<!--  화면구성 div end /////////////////////////////////////-->
	
</body>

</html>