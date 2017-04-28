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
<link rel="stylesheet" href="/webApp/css/cusView.css">
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객 관리</title>
<script>
	$(document).ready(function() {
		$("#menubtn").click(function() {
			$("#menu").slideToggle();
		});
	});
function cusUpdate(){
	$("#cusUpdateFrm").submit();
}	
</script>
</head>
<body>
<%@ include file="include/adminHeader.jspf"%>	

<div class="box3">
<form method="post" action="/webApp/admin/cusUpdate" id="cusUpdateFrm">
	<div class="customerTable table-responsive">
			<table class='table table-hover'>
				<thead>
					<tr>
						<th>개별 고객 관리</th>
					</tr>
				</thead>	
				<tbody>	
					<tr>
						<th  class="info">고객 ID</th>
						<th class="field">${vo.userId}<input type="hidden" value="${vo.userId}" name="userId"/></th>
					</tr>
					<tr>
						<th  class="info">고객명</th>
						<th class="field">${vo.userName}</th>
					</tr>
					<tr>
						<th  class="info">비밀번호</th>
						<th class="field">${vo.userPwd}</th>
					</tr>
					<tr>
						<th  class="info">휴대폰 번호</th>
						<th class="field">${vo.tel}</th>
					</tr>
					<tr>
						<th  class="info">이메일</th>
						<th class="field">${vo.email}</th>
					</tr>					
					<tr>
						<th  class="info">우편번호</th>
						<th class="field">${vo.zipCode}</th>
					</tr>
					<tr>
						<th  class="info">주소1</th>
						<th class="field">${vo.address1}</th>
					</tr>
					<tr>
						<th  class="info">주소2</th>
						<th class="field">${vo.address2}</th>
					</tr>
					<tr>
						<th  class="info">등급</th>
						<th class="field"><input type="text" value="${vo.userRate}" name="userRate"/></th>
					</tr>
					<tr>
						<th  class="info">총구매금액</th>
						<th class="field">${vo.totalPurchase}</th>
					</tr>
					<tr>
						<th  class="info">가입일</th>
						<th class="field">${join_date}</th>
					</tr>
					<tr>
						<th  class="info">집전화번호</th>
						<th class="field">${homeTel}</th>
					</tr>
					<tr class="btnRow">
						<th class="btn"><a href="javascript:cusUpdate()">수정하기</a></th>
						<th class="btn"><a href="/webApp/admin/customerManage">고객 관리로</a></th>
					</tr>
				</tbody>	
			</table>
	</div>
</form>	
</div>	

<%@ include file="include/adminFooter.jspf"%>	
</body>
</html>