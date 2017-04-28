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
</script>
</head>
<body>
<%@ include file="include/adminHeader.jspf"%>	
<script>
	function pwdChk(){
		if($("#adminPwdChk").val()==$("#adminPwd").val()){
			$("#addFrm").submit();
		} else {
			alert("비밀번호를 다시 확인하세요");
		}
	}
	function updateChk(pwd){
		var pwdChk = prompt("삭제할 관리자의 비밀번호를 입력하세요", "비밀번호 입력칸");
		if(pwd==pwdChk){
			$("#updateFrm").submit();
		} else {
			alert("비밀번호가 틀렸습니다. 다시 확인해주세요");
		}
	}
</script>

<div class="box3">
<form method="post" action="/webApp/admin/add" id="addFrm">
	<div class="adminTable table-responsive">
			<table class='table table-hover'>
				<thead>
					<tr>
						<th>관리자 추가</th>
					</tr>
					<tr class="info">
						<th>관리자 ID</th>
						<th>관리자명</th>
						<th>관리 옵션</th>
					</tr>
				</thead>
				<tbody>
				<tr class="add">
					<th><div class="text">추가할 관리자ID</div><input type="text" name="adminId">
					<div class="text">추가할 관리자명</div><input type="text" name="adminName"></th>
					<th><div class="text">추가할 관리자 비밀번호</div><input type="password" name="adminPwd" id="adminPwd">
					<div class="text">비밀번호 재확인</div><input type="password" name="adminPwdChk" id="adminPwdChk"></th>
					<th><input type="button" value="등록하기" onclick="pwdChk()"><input type="reset" value="다시쓰기"></th>
				</tr>	
				</tbody>
			</table>
		</div>						
</form>
	<div class="adminTable table-responsive">
			<table class='table table-hover'>
				<thead>
					<tr>
						<th>관리자 관리</th>
					</tr>
					<tr class="info">
						<th>관리자 ID</th>
						<th>관리자명</th>
						<th>관리 옵션</th>
					</tr>
				</thead>
				<tbody>		
			<c:forEach var="vo" items="${list}">
				<tr id="${vo.adminId}">
					<th id="${vo.adminId}_1">${vo.adminId}</th>
					<th id="${vo.adminId}_2">${vo.adminName}</th>
					<th id="${vo.adminId}_3"><a href="/webApp/admin/update?adminId=${vo.adminId}">수정</a> <a href="/webApp/admin/del?adminId=${vo.adminId}">삭제</a></th>
				</tr>
			</c:forEach>	
				</tbody>
			</table>
	</div>
</div>	

<%@ include file="include/adminFooter.jspf"%>	
</body>
</html>