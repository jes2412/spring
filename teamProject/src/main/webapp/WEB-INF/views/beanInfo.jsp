<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!--   <link rel="stylesheet" href="grid-guide.css">   -->
<link rel="stylesheet" href="/webApp/css/beanInfo.css">
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet">
<script>
	$(document).ready(function() {
		var leftArr =  $("#arrow_left");
		var rightArr = $("#arrow_right");
		$slider = $(".box6-inner");
		var left = $slider.css("left");
		left = parseFloat(left);
		
		rightArr.on("click", function() {
			if(left>-1800){
				left -=150;
				$slider.css("left", left);
			}
		})
		leftArr.on("click", function() {
			if(left<0){
				left += 150;
				$slider.css("left", left)
			}
		})
	});
 </script>
</head>
<body>
<%@ include file="include/header.jspf"%>

<div class="box6">
	<div class="box6-arrow">
		<i class="fa fa-chevron-left" id="arrow_left"></i>
		<i class="fa fa-chevron-right" id="arrow_right"></i>
	</div>
	<div class="box6-inner">
		<ul>
			<li><a href=""><img src="/webApp/img/freesia.jpg"></a></li>
			<li><a href=""><img src="/webApp/img/deepPurple.jpg"></a></li>
			<li><a href=""><img src="/webApp/img/roasted.jpg"></a></li>
			<li><a href=""><img src="/webApp/img/hemlock.jpg"></a></li>
			<li><a href=""><img src="/webApp/img/softyBlue.jpg"></a></li>
			<li><a href=""><img src="/webApp/img/colombiaSupremo.jpg"></a></li>
			<li><a href=""><img src="/webApp/img/brazil.jpg"></a></li>
			<li><a href=""><img src="/webApp/img/cayenne.jpg"></a></li>
			<li><a href=""><img src="/webApp/img/silkyBrown.jpg"></a></li>
			<li><a href=""><img src="/webApp/img/coral.jpg"></a></li>
			<li><a href=""><img src="/webApp/img/cokein.jpg"></a></li>
			<li><a href=""><img src="/webApp/img/dazzlingBlue.jpg"></a></li>
			<li><a href=""><img src="/webApp/img/freesiaReserve.jpg"></a></li>
			<li><a href=""><img src="/webApp/img/deepPurpleReserve.jpg"></a></li>
			<li><a href=""><img src="/webApp/img/silkyBrownReserve.jpg"></a></li>
			<li><a href=""><img src="/webApp/img/coralReserve.jpg"></a></li>
			<li><a href=""><img src="/webApp/img/tangerineTango.jpg"></a></li>
			<li><a href=""><img src="/webApp/img/warmTaupe.jpg"></a></li>
			<li><a href=""><img src="/webApp/img/fiesta.jpg"></a></li>
		</ul>
	</div>
</div>
<div class="box7">
	<div class="box7-1">
		<img src="img/freesia-single.jpg">
	</div>
	<div class="box7-2">
		<h1>FREESIA</h1>
		<ul>
			<li class="left">원산지</li>
			<li class="right">	Colombia, Kenya, Ethiopia</li>
			<li class="left">판매가</li>
			<li class="right">7,000원</li>
			<li class="left">Blending</li>
			<li class="right">콜롬비아 케냐 에티오피아</li>
			<li class="left">FREESIA[200g]</li>
			<li class="center"><input type="number" min="1" max="20" style="width: 35px; text-align: right;">개</li>
			<li class="last">총 금액원</li>
		</ul>
		<h2>총 상품금액 : 20,000원 (3개)</h2>
		<div class="buttons">
			<a href="" class="buyBtn">BUY IT NOW</a>
			<div class="btn2nd">
				<a href="">CART</a><a href="" id="wishList" >WISH LIST</a><a href="" id="QA">Q&A</a>
			</div>
		</div>
	</div>
</div>

<%@ include file="include/footer.jspf"%>	
</body>
</html>