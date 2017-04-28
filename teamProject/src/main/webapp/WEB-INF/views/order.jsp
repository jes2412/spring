<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="http://d3js.org/d3.v3.js"></script>
<script src="/webApp/js/jsForSingle.js"></script>
<!--    <link rel="stylesheet" href="grid-guide.css">       -->
 <link rel="stylesheet" href="/webApp/css/orderStyle.css">
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="/webApp/css/pentagon.css">
</head>
<body>
<%@ include file="include/header.jspf"%>
<div id="blendings">
	<div id="blending0">
		<div class="blending">
			<div class="myBean"></div>
			<div class="blendingList-arrow"><div class="blendingList"></div></div>
		</div>
		<div class="beanSpec">
			<div class="beanPentagon svg-pentagon" style="width: 300px; text-align: center">
			<svg id="J-svg-pentagon0"  width="250" height="250"></svg>
		</div>
		<div class="roastinBar" style="width: 300px; text-align: center;">
			<svg id="roastingSvg0" height="250" width="150"></svg>
		</div>
		<div class="beanDetail"></div>
		<div class="grindingOption"></div>
		</div>
	</div>
</div>
<div class="orderBtn">
 	<a href="" class="buyBtn">바로주문</a><a href="" class="cartBtn">장바구니</a>
</div>

<footer>
	<%@ include file="include/footer.jspf"%>	
</footer>
</body>
<script>
//상단
makingBeanList("blending0");
blendingArrow("blending0");
//하단
makeBeanDetail(3,5,1,2,4, "blending0");
makeGrindingOption("blending0");
makePentagon("J-svg-pentagon0",4,4,4,4,4);
 makeRoastingBar("roastingSvg0");
 
addingBlending("blending1", "J-svg-pentagon1", "roastingSvg1");
addingBlending("blending2", "J-svg-pentagon2", "roastingSvg2");
addingBlending("blending3", "J-svg-pentagon3", "roastingSvg3");
</script>
</html>