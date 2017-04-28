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
<link rel="stylesheet" href="/webApp/css/admin.css">
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
	<div class="orderStatus">
		<div class="orderTable table-responsive">
			<table class='table table-hover'>
				<thead>
					<tr>
						<th>4/17일 주문현황</th>
					</tr>
					<tr>
						<th>분류</th>
						<th>건수</th>
						<th>금액</th>
						<th>비율(건수/총건수)</th>
					</tr>
				</thead>
				<tbody>
				<tr class="success">
					<th>발송완료</th>
					<td>10건</td>
					<td>200,000,00 원</td>
					<td>30%</td>
				</tr>
				<tr class="danger">
					<th>미발송</th>
					<td>999건</td>
					<td>999,999,999 원</td>
					<td>50%</td>
				</tr>
				<tr  class="info">
					<th>총계</th>
					<td>1099 건</td>
					<td>1,212,121,212 원</td>
					<td>10%</td>
				</tr>				
				<tr class="return">
					<th>반품</th>
					<td>5건</td>
					<td>999,999 원</td>
				</tr>
				</tbody>
			</table>
		</div>
		<div class="orderPie">
			<svg id="orderPieGraph"></svg>
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
	var svgWidth = 320;
	var svgHeight = 240;
	var dataSet = [50,30,12,5,3];
	var color = d3.scale.category10();
	var pie = d3.layout.pie();
	var arc = d3.svg.arc().innerRadius(50).outerRadius(100);
	//요소들을 그룹 g로 묶는다
	var pieElements = d3.select("#orderPieGraph").selectAll("g").data(pie(dataSet)).enter().append("g")
	.attr("transform", "translate("+svgWidth/2+" ,"+svgHeight/2+")");
	pieElements.append("path").attr("class", "pie")
	.style("fill",function(d,i){return color(i)})
	//애니메이션 설정하기
	.transition().duration(1000).delay(function(d,i){return i*1000})
	//easing 사용하기
	.ease("linear")
	.attrTween("d",function(d,i){ //보간 값 설정
		var interpolate = d3.interpolate(
				//각 부분의 시작 각도
				{startAngle : d.startAngle, endAngle : d.startAngle},
				//각 부분의 종료 각도
				{startAngle: d.startAngle, endAngle: d.endAngle}
		);
		return function(t){
			return arc(interpolate(t)); //시간(t)에 따라 처리한다.
		}
	})
	var textElements = d3.select("#orderPieGraph").append("text").attr("class", "total")
	//텍스트가 가운데에 위치하도록 설정
	.attr("transform", "translate("+svgWidth/2+", "+svgHeight/2+")")
	//합계표시 : d3.sum(대상데이터) 메서드를 사용한다
	.text("합계 : "+d3.sum(dataSet))
	pieElements.append("text").attr("class", "pieNum")
	//centroid() : 부채꼴의 중심좌표를 구해준다.
	.attr("transform", function(d,i){return "translate("+arc.centroid(d)+")";}) //부채꼴의 중심좌표를 구해서 위치시킴
	.text(function(d,i){return d.value+"퍼센트";}) //해당 부채꼴의 data 크기를 표기
</script>	
</html>
















