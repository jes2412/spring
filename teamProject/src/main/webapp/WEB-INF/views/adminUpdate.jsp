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
<title>관리자 관리</title>
<script>
	$(document).ready(function() {
		$("#menubtn").click(function() {
			$("#menu").slideToggle();
		});
	});
function chk(){
	if($("#adminName").val()==null || $("#adminName").val()==""){
		alert("관리자명을 입력해주세요");
		return false;
	}
	if($("#adminPwd").val()==null || $("#adminPwd").val()==""){
		alert("관리자 비밀번호를 입력하세요");
		return false;
	}
	$("#updatFrm").submit();
}	
</script>
</head>
<body>
<%@ include file="include/adminHeader.jspf"%>	
<div class="box3">
<form method="post" action="/webApp/admin/updateOk" id="updatFrm">
	<div class="adminTable table-responsive">
			<table class='table table-hover'>
				<thead>
					<tr>
						<th>관리자 관리</th>
					</tr>
					<tr class="info">
						<th>관리자 ID</th>
						<th>수정할 관리자명</th>
						<th>수정할 관리자비밀번호</th>
						<th>관리 옵션</th>
					</tr>
				<tbody>	
						<tr class="update">
						<th><input type="text" name="adminId" value="${vo.adminId}" readonly></th>
						<th><input type="text" name="adminName" id="adminName"></th>
						<th><input type="password" name="adminPwd" id="adminPwd"></th>
						<th><a href="javascript:chk()">수정</a> <a href="/webApp/admin/adminManage">취소</a></th>
					</tr>
				</tbody>
			</table>
	</div>
</form>	
</div>	

<%@ include file="include/adminFooter.jspf"%>	
</body>
</html>