<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Freesia</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="http://d3js.org/d3.v3.js"></script>
<script src="/webApp/js/jsForSingle.js"></script>
<!--    <link rel="stylesheet" href="grid-guide.css">       -->
 <link rel="stylesheet" href="/webApp/css/beanInfo.css">
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="/webApp/css/pentagon.css">
</head>
<body onload="change(9000)">
<%@ include file="../include/header.jspf"%>


<div class="box6">
	<div class="box6-arrow">
		<i class="fa fa-chevron-left" id="arrow_left"></i>
		<i class="fa fa-chevron-right" id="arrow_right"></i>
	</div>
	<div class="box6-inner">
		<ul>
			<li><a href="/webApp/single/freesia-single"><img src="/webApp/img/freesia.jpg"></a></li>
			<li><a href="/webApp/single/deepPurple-single"><img src="/webApp/img/deepPurple.jpg"></a></li>
			<li><a href="/webApp/single/roasted-single"><img src="/webApp/img/roasted.jpg"></a></li>
			<li><a href="/webApp/single/hemlock-single"><img src="/webApp/img/hemlock.jpg"></a></li>
			<li><a href="/webApp/single/softyBlue-single"><img src="/webApp/img/softyBlue.jpg"></a></li>
			<li><a href="/webApp/single/colombiaSupremo-single"><img src="/webApp/img/colombiaSupremo.jpg"></a></li>
			<li><a href="/webApp/single/brazil-single"><img src="/webApp/img/brazil.jpg"></a></li>
			<li><a href="/webApp/single/cayenne-single"><img src="/webApp/img/cayenne.jpg"></a></li>
			<li><a href="/webApp/single/silkyBrown-single"><img src="/webApp/img/silkyBrown.jpg"></a></li>
			<li><a href="/webApp/single/coral-single"><img src="/webApp/img/coral.jpg"></a></li>
			<li><a href="/webApp/single/cokein-single"><img src="/webApp/img/cokein.jpg"></a></li>
			<li><a href="/webApp/single/dazzlingBlue-single"><img src="/webApp/img/dazzlingBlue.jpg"></a></li>
			<li><a href="/webApp/single/freesiaReserve-single"><img src="/webApp/img/freesiaReserve.jpg"></a></li>
			<li><a href="/webApp/single/deepPurpleReserve-single"><img src="/webApp/img/deepPurpleReserve.jpg"></a></li>
			<li><a href="/webApp/single/silkyBrownReserve-single"><img src="/webApp/img/silkyBrownReserve.jpg"></a></li>
			<li><a href="/webApp/single/coralReserve-single"><img src="/webApp/img/coralReserve.jpg"></a></li>
			<li><a href="/webApp/single/tangerineTango-single"><img src="/webApp/img/tangerineTango.jpg"></a></li>
			<li><a href="/webApp/single/warmTaupe-single"><img src="/webApp/img/warmTaupe.jpg"></a></li>
			<li><a href="/webApp/single/fiesta-single"><img src="/webApp/img/fiesta.jpg"></a></li>
		</ul>
	</div>
</div>
<div class="box7">
	<div class="box7-1">
		<img src="/webApp/img/tangerineTango-single.jpg">
	</div>
	<div class="box7-2">
		<h1>TANGERINE TANGO</h1>
		<ul>
			<li class="left">원산지</li>
			<li class="right">		Colombia, El Salvador..</li>
			<li class="left">판매가</li>
			<li class="right">9,000원</li>
			<li class="left">Blending</li>
			<li class="right">콜롬비아 에살바도르 케냐 인도네시아</li>
			<li class="left">TANGERINE TANGO [200g]</li>
			<li class="center"><input id = "count" type="number" min="1" max="20" value = "1" style="width: 35px; text-align: right;" onchange = "change()">개</li>
			
		</ul>
		<h2>총 상품금액 : <span id="sum"></span>원</h2>
		<div class="buttons">
			<a href="" class="buyBtn">BUY IT NOW</a>
			<div class="btn2nd">
				<a href="">CART</a><a href="" id="wishList" >WISH LIST</a><a href="" id="QA">Q&A</a>
			</div>
		</div>
	</div>
</div>
<%@ include file="../include/footer.jspf"%>	
</body>
</html>