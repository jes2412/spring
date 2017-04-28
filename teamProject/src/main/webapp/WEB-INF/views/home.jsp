<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://d3js.org/d3.v3.js"></script>
 <!-- <link rel="stylesheet" href="grid-guide.css"> -->
<link rel="stylesheet" href="/webApp/css/mainStyle.css">
<link rel="stylesheet" href="/webApp/css/pentagon.css">
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet">
</head>
<body>
<%@ include file="include/header.jspf"%>
	<div class="box3">
			<img src="/webApp/img/mainSlide1.jpg">
			<img src="/webApp/img/mainSlide2.jpg">
			<img src="/webApp/img/mainSlide3.jpg">
			<img src="/webApp/img/mainSlide4.jpg">
			<img src="/webApp/img/mainSlide5.jpg">
	</div>
	<div class="box6">
		<h3>Best Seller Top 3</h3>
		<div class="box6-1 top3">
			<img src="/webApp/img/freesia-single.jpg"/>
			<a href="">	
				<div class="text">			
					<h3>Freesia</h3>
					<h5>상품특성</h5>
					<h5>7,000원</h5>
				</div>
			</a>
		</div>
		<div class="box6-2 top3">
			<img src="/webApp/img/freesia-single.jpg"/>
			<a href="">
				<div class="text">			
					<h3>Freesia</h3>
					<h5>상품특성</h5>
					<h5>5,000원</h5>
				</div>
			</a>
		</div>
		<div class="box6-3 top3">
			<img src="/webApp/img/freesia-single.jpg"/>
			<a href="">	
				<div class="text">			
					<h3>Freesia</h3>
					<h5>상품특성</h5>
					<h5>4,000원</h5>
				</div>
			</a>
		</div>
	</div>
	<div class="box7">
		<div class="box7-1">
			<ul>
				<li>Freesia <div  class="inputAndIcon"><input type="number" min="1" max="100" value="40" readonly>%</div></li>
				<li>TangerineTango <div  class="inputAndIcon"><input type="number" min="1" max="100" value="30" readonly>%</div></li>
				<li>SilkyBrown <div  class="inputAndIcon"><input type="number" min="1" max="100" value="30" readonly >%</div></li>
			</ul>
		</div>
		<div class="box7-2">
			<div class="box7-2-inner">
				<ul>
					<li><a href=""><img src="/webApp/img/freesia.jpg"></a></li>
					<li><a href=""><img src="/webApp/img/silkyBrown.jpg"></a></li>
					<li><a href=""><img src="/webApp/img/tangerineTango.jpg"></a></li>
				</ul>
			</div>
		</div>
		<div class="box7-3">
			<div class="box7-3-inner pickup">
				<h3>추천수 : 222</h4>
				<h3>가격 : 6,000원</h4>
				<div class="badge">
					<i class="fa fa-thumbs-o-up"></i>Best Seller
				</div>
			</div>
		</div>
	</div>	
	<div class="box8">	
		<div class="box8-inner">
			<div class="box8-1 svg-pentagon" style="width: 300px; text-align: center">
				<svg id="J-svg-pentagon"  width="250" height="250">
			        <g transform="translate(88, 95)" id="polygon_g">
			            <polygon class="pentagon pentagon-5" />
			            <polygon class="pentagon pentagon-4" />
			            <polygon class="pentagon pentagon-3" />
			            <polygon class="pentagon pentagon-2" />
			            <polygon class="pentagon pentagon-1" />
			         </g>
			        <g transform="translate(88, 95)">
			            <text class="text5">5</text>
			            <text class="text4">4</text>
			            <text class="text3">3</text>
			            <text class="text2">2</text>
			            <text class="text1">1</text>
			           <text class="status1">단맛</text>
        			   <text class="status2">산미</text>
         			  <text class="status3">쓴맛</text>
         			  <text class="status4">향미</text>
           			  <text class="status5">바디</text>  
			        </g>
			    </svg>
			</div>
			
			<div class="box8-2" style="width: 300px; text-align: center;">
				<svg id="roastingSvg" height="250" width="150">
					<g id="MEDIUM" ></g>
					<g id="HIGH"></g>
					<g id="CITY"></g>
					<g id="FULLCITY"></g>
					<g id="FRENCH"></g>
					<g id="ITALIAN"></g>
				</svg>
			</div>
			
			<div class="box8-3">
				<h4>원두 정보</h4>
				<ul>
					<li>단맛 : 3</li>
					<li>신맛 : 1</li>
					<li>쓴맛 : 2</li>
					<li>향미 : 3</li>
					<li>바디 : 5</li>
					<li>로스팅 포인트<br/>Medium</li>
				</ul>
			</div>
			<div class="box8-4">
				<ul>
					<li><a href=""  class="buyBtn">바로주문</a></li>
					<li><a href="" class="cartBtn">장바구니</a></li>
				</ul>
			</div>			
		</div>
	</div>
<%@ include file="include/footer.jspf"%>	
<script>
var svgPentagon = $('#J-svg-pentagon');
var abilityPentagon;
var points = {
    base : ["6", "1", "10.7552826", "4.45491503", "8.93892626", "10.045085", "3.06107374", "10.045085", "1.24471742", "4.45491503"],
    pointsAbility : []
}
var setPentagon = function(num) {
    for (i=1;i<=num;i++) {
        var pointsChildren = 'points' + i;
        points[pointsChildren] = new Array();
        for (j=0;j<points.base.length;j++) {
            points[pointsChildren].push((parseFloat(points.base[j]) * (6 + i * 4)).toFixed(2));
            points[pointsChildren][j] = parseFloat(points[pointsChildren][j]) - (i * 24);
        }
        svgPentagon.find('.pentagon-' + i).attr('points', points[pointsChildren].join(' '));
        svgPentagon.find(".text"+i).attr("x", 36).attr("y", 18-(i*20)).attr("text-anchor", "middle");
        svgPentagon.find(".status1").attr("x", 60).attr("y", -80).attr("text-anchor", "middle");
        svgPentagon.find(".status2").attr("x", 140).attr("y", -4).attr("text-anchor", "middle");
        svgPentagon.find(".status3").attr("x", 112).attr("y", 141).attr("text-anchor", "middle");
        svgPentagon.find(".status4").attr("x", -40).attr("y", 141).attr("text-anchor", "middle");
        svgPentagon.find(".status5").attr("x", -70).attr("y", 0).attr("text-anchor", "middle");        
   }
}
setPentagon(5);

	var p1 = 3;
	var p2 = 4;
	var p3 = 5;
	var p4 = 3;
	var p5 = 3;
    var pentagonAbility = svgPentagon.find('.pentagonAbility');
    var temp ='0,0 0,0 0,0 0,0 0,0';
    pentagonAbilityPoints = points['points' + p1][0] + ' ' + points['points' + p1][1] + ' ' +
                            points['points' + p2][2] + ' ' + points['points' + p2][3] + ' ' +
                            points['points' + p3][4] + ' ' + points['points' + p3][5] + ' ' +
                            points['points' + p4][6] + ' ' + points['points' + p4][7] + ' ' +
                            points['points' + p5][8] + ' ' + points['points' + p5][9];
  var abilityPentagon =   d3.select("#polygon_g").append("polygon").attr("id", "abilityPentagon").attr("class","pentagon").attr("class", "pentagonAbility");
  abilityPentagon.attr('points', pentagonAbilityPoints);
  temp = pentagonAbilityPoints;
  
  
  $("#submit").on("click", function() {
		p1 =  $("#t1").val();
		p2 =  $("#t2").val();
		p3 =  $("#t3").val();
		p4 =  $("#t4").val();
		p5 =  $("#t5").val();
	    pentagonAbilityPoints = points['points' + p1][0] + ' ' + points['points' + p1][1] + ' ' +
	    points['points' + p2][2] + ' ' + points['points' + p2][3] + ' ' +
	    points['points' + p3][4] + ' ' + points['points' + p3][5] + ' ' +
	    points['points' + p4][6] + ' ' + points['points' + p4][7] + ' ' +
	    points['points' + p5][8] + ' ' + points['points' + p5][9];
		abilityPentagon.attr('points', temp).transition().duration(1500).attr('points', pentagonAbilityPoints);
		temp = pentagonAbilityPoints;
});
  
  var rectHeight = 40;
  var rectWidth = 100;
  var rectY = 40;
  var gName = ["MEDIUM", "HIGH", "CITY", "FULLCITY", "FRENCH", "ITALIAN"];
  var barName = ["mediumBar", "highBar", "cityBar", "fullCityBar", "frenchBar", "italianBar"];
  var txtName = ["mediumTxt", "highTxt", "cityTxt", "fullCityTxt", "frenchTxt", "italianTxt"];
  var hexName = ["mediumHex", "highHex", "cityHex", "fullCityHex", "frenchHex", "italianHex"];
  var colors = ["#8a792d", "#855e29", "#754215", "#63371b", "#4d2c1e", "#382318"];
  var basePoint = [5, 2.75, 4, 4.5, 2, 4.5, 1, 2.75, 2, 1, 4, 1];

  for(var i = 0; i<gName.length; i++){
  	barName[i] = d3.select("#"+gName[i]).append("rect").attr("x", 0).attr("y",rectY*i);
  	barName[i].attr("width", rectWidth).attr("height", rectHeight).attr("stroke", "white").attr("stroke-width", "1").attr("fill", colors[i]);
  	txtName[i] = d3.select("#"+gName[i]).append("text").text(gName[i]).attr("fill", "white").attr("x", 25).attr("y", rectY*i+25);
  	var hexScale = 8;
  	var hexX = 0;
  	var hexY = 0;
  	var points = "";
  	for(var p = 0 ; p< basePoint.length; p++){
  		if(p%2==0){ // x 좌표
  			points += basePoint[p]*hexScale+hexX+100+", ";
  		} else { //y좌표
  			points += basePoint[p]*hexScale+hexY+(rectY*i)+" ";
  		}
  	}
  	hexName[i] = d3.select("#"+gName[i]).append("polygon").attr("points", points).attr("fill", colors[i]).attr("opacity", 0);
   }
  hexName[0].attr("opacity", 1);
   $gs = $("#roastingSvg").find("g");
   $before = $("#MEDIUM").find("polygon");
   $gs.each(function(i) {
   	$(this).on("click", function() {
   		$before.attr("opacity", 0);
   		$(this).find("polygon").css("transition-duration", "1s").attr("opacity", 1);
   		$before = $(this).find("polygon");
   	})
   });
</script>
</body>
</html>