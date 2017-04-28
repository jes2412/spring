<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--  <link rel="stylesheet" href="/webApp/css/grid-guide.css">   -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/webApp/css/adminManage.css">
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객 관리</title>
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
	<div class="customerTable table-responsive">
			<table class='table table-hover'>
				<thead>
					<tr>
						<th>고객 관리</th>
					</tr>
					<tr class="info">
						<th>고객 ID</th>
						<th>고객명</th>
						<th>휴대폰번호</th>
						<th>관리 옵션</th>
					</tr>
				</thead>
				<tbody>		
			<c:forEach var="vo" items="${list}">
				<tr>
					<th>${vo.userId}</th>
					<th>${vo.userName}</th>
					<th>${vo.tel}</th>
					<th><a href="/webApp/admin/cusView?userId=${vo.userId}">자세히보기</a> <a href="/webApp/admin/cusDel?userId=${vo.userId}">탈퇴처리</a></th>
				</tr>
			</c:forEach>	
				</tbody>
			</table>
	</div>
</div>	

<%@ include file="include/adminFooter.jspf"%>	
</body>
</html>