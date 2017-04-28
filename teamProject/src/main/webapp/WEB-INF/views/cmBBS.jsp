<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>고객관리 게시판</title>
<meta name="viewport" content="width=device-width">

<!--  <link rel="stylesheet" href="grid-guide.css"> -->
<link rel="stylesheet" href="/webApp/css/adminInven.css">
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

<div class="box4">
<div id="bulletin">
<table border="1" width="100%" height="40" id="tab">
	<tr align="center">
		<td width="33%" style="background-color:yellow;"><a href="/webApp/admin/orderBBS">주문관리</a></td>
		<td width="33%" ><a href="/webApp/admin/cmBBS">회원관리</a></td>
		<td width="33%"><a href="/webApp/admin/imBBS">재고관리</a></td>
	</tr>	
</table><br/>
<table border="1" width="100%" height="40" id="tab2">
	<tr align="center">
		<td width="33%" style="background-color:#d33f8d;"><a href="adminBasic_1.html">구입</a></td>
		<td width="33%" ><a href="adminBasic_2.html">반품</a></td>
		<td width="33%"><a href="adminBasic_3.html">루루루</a></td>
	</tr>	
</table><br/>
   <ul id="head">
   		<li class="a1">번호</li>
   		<li class="a2">제목</li>
   		<li class="a3">작성자</li>
   		<li class="a4">등록일</li>
   		<li class="a5">추천수</li>
   		<li class="a5">조회수</li>
   </ul>
   <ul id="list">
   		<li class="a1">24</li>
   		<li class="a2"><span style="display:inline-block;background-color:#d33f8d;width:70px;height:20px;border-radius:10px;font-size:12px;text-align:center;line-height:20px;color:white;margin-right:10px">구입</span>  국립오페라</li>
   		<li class="a3">여태</li>
   		<li class="a4">2017.04.17</li>
   		<li class="a5">0</li>
   		<li class="a5">100</li>
   		
   		<li class="a1">25</li>
   		<li class="a2"><span style="display:inline-block;background-color:#d33f8d;width:70px;height:20px;border-radius:10px;font-size:12px;text-align:center;line-height:20px;color:white;margin-right:10px">구입</span>  국립오페라</li>
   		<li class="a3">여태</li>
   		<li class="a4">2017.04.17</li>
   		<li class="a5">0</li>
   		<li class="a5">100</li>
   		
   		<li class="a1">26</li>
   		<li class="a2"><span style="display:inline-block;background-color:#d33f8d;width:70px;height:20px;border-radius:10px;font-size:12px;text-align:center;line-height:20px;color:white;margin-right:10px">구입</span>  국립오페라</li>
   		<li class="a3">여태</li>
   		<li class="a4">2017.04.17</li>
   		<li class="a5">0</li>
   		<li class="a5">100</li>
   		
   		<li class="a1">27</li>
   		<li class="a2"><span style="display:inline-block;background-color:#d33f8d;width:70px;height:20px;border-radius:10px;font-size:12px;text-align:center;line-height:20px;color:white;margin-right:10px">구입</span>  국립오페라</li>
   		<li class="a3">여태</li>
   		<li class="a4">2017.04.17</li>
   		<li class="a5">0</li>
   		<li class="a5">100</li>
   		
   			<li class="a1">28</li>
   		<li class="a2"><span style="display:inline-block;background-color:#d33f8d;width:70px;height:20px;border-radius:10px;font-size:12px;text-align:center;line-height:20px;color:white;margin-right:10px">구입</span>  국립오페라</li>
   		<li class="a3">여태</li>
   		<li class="a4">2017.04.17</li>
   		<li class="a5">0</li>
   		<li class="a5">100</li>
   			<li class="a1">29</li>
   		<li class="a2"><span style="display:inline-block;background-color:#d33f8d;width:70px;height:20px;border-radius:10px;font-size:12px;text-align:center;line-height:20px;color:white;margin-right:10px">구입</span>  국립오페라</li>
   		<li class="a3">여태</li>
   		<li class="a4">2017.04.17</li>
   		<li class="a5">0</li>
   		<li class="a5">100</li>
   		<li class="a1">30</li>
   		<li class="a2"><span style="display:inline-block;background-color:#d33f8d;width:70px;height:20px;border-radius:10px;font-size:12px;text-align:center;line-height:20px;color:white;margin-right:10px">구입</span> 국립오페라</li>
   		<li class="a3">여태</li>
   		<li class="a4">2017.04.17</li>
   		<li class="a5">0</li>
   		<li class="a5">100</li>
   </ul>
   
   	<div id="next">
		<a>1</a>
		<a>2</a>
		<a>3</a>
	</div>
 </div>
</div>

<%@ include file="include/adminFooter.jspf"%>

</body>	
</html>
