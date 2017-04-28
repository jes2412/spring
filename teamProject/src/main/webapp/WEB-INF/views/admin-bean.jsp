<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>샘플</title>
<meta name="viewport" content="width=device-width">

<!--  <link rel="stylesheet" href="grid-guide.css"> -->
<link rel="stylesheet" href="/webApp/css/admin-bean.css">
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="http://d3js.org/d3.v3.js"></script>
<script>
	$(document).ready(function() {
		$("#menubtn").click(function() {
			$("#menu").slideToggle();
		});
	});
</script>
</head>
<body>

<%@ include file="include/adminHeader.jspf"%>	
			
<div class="box3">
	<div class="beanGraph">
		<svg id="myGraph"></svg>
	</div>
	
	<div class="beanBest">
		<div class="orderTable table-responsive">
			<table class='table table-hover'>
				<thead>
					<tr>
						<th>Best Seller Top 5</th>
					</tr>
					<tr class="info">
						<th>원두명</th>
						<th>판매비율</th>
						<th>금액</th>
					</tr>
				</thead>
				<tbody>
				<tr >
					<th>원둥 ㅇㅇㅇㅇ</th>
					<td>30%</td>
					<td>200,000원</td>
				</tr>
				<tr>
					<th>원두12</th>
					<td>20%</td>
					<td>99,999 원</td>
				</tr>
				<tr >
					<th>ㅇㅌㅈ</th>
					<td>15%</td>
					<td>999,999 원</td>
				</tr>
				<tr >
					<th>ㅇㅇ2</th>
					<td>5%</td>
					<td>999 원</td>
				</tr>				
			</tbody>
			</table>
		</div>
	</div>
</div>

<div class="box6">
	<div class="box6-1">
		<div class="summary">
			<a href="/webApp/admin/order">
				<i class="fa fa-krw"></i>
				<h1>주문현황</h1>
				<p>목적에 맞는 다양한 각도로<br/>
				데이터를 분석/해석합니다.</p>
			</a>
		</div>
	</div>
	
	<div class="box6-2">
		<div class="summary">
			<a href="/webApp/admin/term">
				<i class="fa fa-bar-chart-o"></i>
				<h1>기간별 매출분석</h1>
				<p>해석 결과는 데이터 시각화해서<br/>
				활용할 수 있게 합니다.</p>
			</a>
		</div>
	</div>
	
	<div class="box6-3">
		<div class="summary">
			<a href="/webApp/admin/bean">		
				<i class="fa fa-pie-chart"></i>
				<h1>원두별 매출 분석</h1>
				<p>24시간 대응 팀으로<br/>
				장애에 신속하게 대응합니다.</p>
			</a>
		</div>
	</div>
</div>

<div class="box4">
		<div class="news">
			<h1><a href="/webApp/admin/orderBBS">주문현황</a></h1>
			<ul>
				<li><a href="">
					<time datetime="2014-10-15">10/15</time>
					<div class="text"><span>발송/</span>데이터 유지 보수를 수행합니다.</div>
				</a></li>
				<li><a href="">
					<time datetime="2014-10-05">10/05</time>
					<div class="text"><span>발송/</span>안드로이드 애플리케이션 버전 1.2를 출시했습니다.</div>
				</a></li>
				<li><a href="">
					<time datetime="2014-09-22">09/22</time>
					<div class="text"><span>미발송/</span>세미나/캠페인과 관련된 공지사항</div>
				</a></li>
				<li><a href="">
					<time datetime="2014-09-15">09/15</time>
					<div class="text"><span>미발송/</span>그래프 표시의 변경 방식을 쉽게 바꿨습니다.</div>
				</a></li>
			</ul>
		</div>
</div>

<%@ include file="include/adminFooter.jspf"%>	

</body>
<script>
//●는 추가, 갱신한 곳
var svgWidth = 600;	// SVG 요소의 넓이
var svgHeight = 240;	// SVG 요소의 높이
var offsetX = 30;	// X 좌표의 오프셋(어긋난 정도)
var offsetY = 20;	// Y 좌표의 오프셋(어긋난 정도)
var barElements;	// 막대그래프의 막대 요소를 저장할 변수
var dataSet = [700, 70, 175, 80, 220, 40, 180, 70, 90, 10, 20, 30, 40, 50, 60, 70, 80, 900, 500];
var dataMax = 900;	// 데이터의 최댓값
var barWidth = 20;	// 막대의 넓이
var barMargin = 10;	// 막대의 옆 간격
//그래프 그리기
barElements = d3.select("#myGraph")
.selectAll("rect")	// rect 요소를 지정
.data(dataSet)	// 데이터를 요소에 연결
//눈금을 표시하기 위한 스케일 설정
var yScale = d3.scale.linear()   // 스케일 설정
.domain([0, d3.max(dataSet, function(d){ return d; })]) // 원래 크기
.range([svgHeight, 0]) // 실체 출력 크기
//세로 방향의 눈금을 설정하고 표시
d3.select("#myGraph")
.append("g")
.attr("class", "axis")
.attr("transform", "translate("+offsetX+", "+(0+(yScale(d3.max(dataSet, function(d){ return d; })))-offsetY)+")")
.call(
	d3.svg.axis()
	  .scale(yScale)  //스케일 적용
	  .orient("left") //눈금의 표시 위치를 왼쪽으로 지정
)
//데이터 추가
barElements.enter()	// 데이터 수만큼 반복
.append("rect")	// 데이터 수만큼 rect 요소가 추가됨
.attr("class", "bar")	// CSS 클래스 설정
.attr("height", 0)	// 초깃값을 0으로 설정●
.attr("width", barWidth)	// 넓이 지정
.attr("x", function(d, i){
		return i * (barWidth+barMargin)+offsetX;		// X 좌표를 표시 순서×25+offsetX로 함 
})
.attr("y", svgHeight - offsetY)	// 그래프 가장 아래에 좌표를 설정●
	//이벤트 추가
.on("mouseover", function() {
	d3.select(this).style("fill","gray");
})
.on("mouseout", function() {
	d3.select(this).style("fill","orange");
})
	// 애니메이션 처리●　여기부터 barElements.enter() 전까지가 추가한 곳
.transition()
.duration(500)	// 애니메이션 시간
.delay(function(d,i){
	  return i*500;
})
.attr("y", function(d, i){	// Y 좌표를 지정
		return yScale(d)-offsetY// Y 좌표를 계산
})
.attr("height", function(d,i){	// 넓이 설정. 2번째의 파라미터에 함수를 지정
		return svgHeight-yScale(d);	// 데이터 값을 그대로 높이로 지정
})
barElements.enter()	// text 요소 지정
.append("text")	// text 요소 추가
.attr("class", "barNum")	// CSS 클래스 설정
.attr("x", function(d, i){	// X 좌표를 지정
		return i * (barWidth+barMargin) + 10+offsetX;	// 막대그래프의 표시 간격을 맞춤
})
.attr("y", svgHeight - 5-offsetY)	// Y 좌표를 지정
.text(function(d, i){	// 데이터 표시
		return d;
	})
//세로 방향의 선을 표시
d3.select("#myGraph")
.append("rect")
.attr("class", "axis_x")
.attr("width", svgWidth)
.attr("height", 1)
.attr("transform", "translate("+offsetX+", "+(svgHeight-offsetY)+")")
//막대의 레이블을 표시
barElements.enter()
.append("text")
.attr("class", "barName")
.attr("x", function(d, i){	// X 좌표를 지정
	return i * (barWidth+barMargin) + 10+offsetX;	// 막대그래프의 표시 간격을 맞춤
})
.attr("y", svgHeight-offsetY+15)
.text(function(d, i){
		return ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L","M","N","O","P","Q","R","S","T"][i];	// 레이블 이름을 반환
	})
</script>
</html>
















