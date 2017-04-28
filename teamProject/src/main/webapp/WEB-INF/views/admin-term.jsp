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
<link rel="stylesheet" href="/webApp/css/admin-term.css">
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
<style>
	#myGraph {width: 800}
	svg {width: 750px; height: 240px; border: 1px solid black;}
	.line {fill:none; stroke:black;}
	.axis text {font-family: sans-serif; font-size: 11px;}
	.axis path, .axis line {fill:none; stroke:black}
	.itemA {stroke:black;}
	.itemB {stroke:blue;}
	.itemC {stroke:red;}
</style>			
<div class="box3">
	<div class="termSales"	>
		<h3>년도별 매출 동향(백분율)</h3>
		<svg id="myGraph"></svg>
	</div>
	<div class="termDetail">
	여기에 텀 인덱스랑 기타 등등 들어감
	</div>
</div>
<script>
	var svgWidth = 750;
	var svgHeight = 240;
	
	var offSetX = 30;
	var offSetY = 20;
	var scale = 2.0;
	var baseSet = [0,0,0,0,0,0,0,0,0,0,0,0]
	var dataSet1 = [10, 47, 100, 8, 64, 99, 75, 22, 63, 80, 11, 40]; //12개 넣었음
	var dataSet2 = [50, 77, 55, 48, 64, 90, 84, 42, 13, 40, 90, 56];
	var dataSet3 = [50, 29, 59, 33, 98, 23, 40, 30, 90, 19, 25, 88];
	var margin = svgWidth/(dataSet1.length-1) // 꺽은선 그래프의 간격을 계산한다
	drawGraph(dataSet1, "itemA", "linear"); //각각 그래프 표시하는 함수
	drawGraph(dataSet2, "itemB", "linear");
	drawGraph(dataSet3, "itemC", "linear");
	drawScale();  // 눈금표시
	function drawGraph(dataSet, cssClassName, type){
		//꺽은선 그래프의 좌료를 계산하는 메서드
		var line = d3.svg.line().x(function(d,i){return offSetX+i*margin;})
		.y(function(d,i){
			// 데이터로부터 Y 좌표 빼기
			return svgHeight - (d*scale) - offSetY;
		}).interpolate(type) //꺽은선의 모양을 지정 
		var lineElements = d3.select("#myGraph").append("path") // 데이터 수만큼 path 요소를 추가
		.attr("class", "line "+cssClassName) // CSS 클래스 지정
		.attr("d",  line(baseSet))
		.transition()
		.duration(1000)
		.attr("d", line(dataSet)) //연속선 지정
		}
	//그래프의 눈금을 표시하는 함수
	function drawScale(){
		//눈금을 표시하기 위해 D3 스케일 설정
		var yScale = d3.scale.linear() //스케일 설정
		.domain([0,100]) // 원래 크기가 0~100까지
		.range([scale*100, 0]) // 실제 표시할 크기 설정 (스케일*100 부터 ~0 까지)
		//눈금 표시
		d3.select("#myGraph").append("g").attr("class", "axis").attr("transform", "translate("+offSetX+", "+offSetY+")")
		.call(d3.svg.axis().scale(yScale) // 스케일 적용
				.orient("left")) //눈금 표시 위치를 왼쪽으로 지정
		//가로 방향의 선을 표시
		d3.select("#myGraph").append("rect").attr("class", "axis_x").attr("width", svgWidth).attr("height", 1)
		.attr("transform", "translate("+offSetX+", "+(svgHeight-offSetY-5)+")");
		var xScale = d3.scale.linear().domain([1,12]).range([0,svgWidth-40])
		//가로 눈금 표시
		d3.select("#myGraph").append("g").attr("class", "axis").attr("transform", "translate("+offSetX+", "+(svgHeight-offSetY)+")")
		.call(d3.svg.axis().scale(xScale).orient("bottom"))
	}
	
	
</script>
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
</html>
















