<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://d3js.org/d3.v3.js"></script>
<script src="/webApp/js/beanJs.js"></script>
<!--   <link rel="stylesheet" href="grid-guide.css">   -->
<link rel="stylesheet" href="/webApp/css/cartStyle.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="/webApp/css/pentagon.css">
</head>
<body>
<%@ include file="include/header.jspf"%>

<div class="box6">
		<form method="post">
	<div id="tab">
		<div id="tab1">
			<div id="myPage">마이페이지</div>
		</div>
		<div id="tab2">
			<div id="myShopping_list">
				<ul class="myS">
					<li><a href="">주문/배송조회</a></li><br/>
					<li><a href="">취소/반품/교환내역</a></li><br/>
					<li><a href="">장바구니</a></li><br/>
					<li><a href="">1:1문의내역</a></li><br/>
					<li><a href="">회원정보수정</a></li><br/>
					<li><a href="">회원탈퇴</a></li>
				</ul>
				<div style="border-bottom:1px solid #dadada;width:100%;height:70px;margin:0 auto"></div>
			</div>
			<div id="myShopping_body">
				<div>
					<h4 id="chk">★장바구니</h4>
				</div>
				<div style="border-bottom:2px solid black;width:95.5%;height:10px;margin:0 auto"></div>
					<div style="margin-left:10px">
		<div class="box6">
	<div class="box6-1">
		<ul>
			<li>Freesia 10%</li>
			<li>Freesia  20%</li>
			<li>Freesia  20%</li>
		</ul>
	</div>
	<div class="box6-2">
	<div class="box6-2-inner">
		<ul>
			<li><img src="beans/freesia.jpg"></li>
			<li><img src="beans/deepPurple.jpg"></li>
			<li><img src="beans/roasted.jpg"></li>
		</ul>
	</div>
	<!-- 뭐든 -->
		
	</div>
					
	<div class="box7"> 				
	<div class="box7-1 svg-pentagon" style="width: 300px; text-align: center">
		<svg class="J-svg-pentagon" id="J-svg-pentagon"  width="250" height="250"></svg>
<script>
	makePentagon("J-svg-pentagon", 5,4,3,2,1);
</script>		
	</div>
		<div id="box7-3"" class="box7-3 beanDetail">
	<script>
	makeBeanDetail(3 , 2, 3, 2, 1,"box7-3");
	</script>
		</div>
		<!-- 가격 삭제  -->		
				</div>
				<div style="border-bottom: 3px solid gray;width:80%"></div>			
			</div>
			</div>
		</div>
	
	</div>
</form>
</div>

<%@ include file="include/footer.jspf"%>	
</body>
</html>