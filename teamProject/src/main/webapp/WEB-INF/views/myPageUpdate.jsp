<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://d3js.org/d3.v3.js"></script>
<script src="/webApp/js/beanJs.js"></script>
<!--   <link rel="stylesheet" href="/webApp/css/grid-guide.css">   -->
<link rel="stylesheet" href="/webApp/css/myPageUpdate.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="/webApp/css/pentagon.css">
<script>
function cusUpdate(){
	if($("#userPwd").val()==$("#userPwdChk").val()){
		$("#cusUpdateFrm").submit();
	} else {
		alert("비밀번호를 다시 확인하세요");
	}
}
</script>
</head>
<body>
<%@ include file="include/header.jspf"%>
<div class="box6">
	<div class="myPage_top"><span>장바구니</span></div>		
</div>	
<div class="box7">	
	<div class="myPageList">
		<ul>
			<li><a href="">주문/배송조회</a></li><br/>
			<li><a href="">취소/반품/교환내역</a></li><br/>
			<li><a href="/webApp/cart">장바구니</a></li><br/>
			<li><a href="/webApp/oneAndOne">1:1문의내역</a></li><br/>
			<li><a href="/webApp/myPageUpdate">회원정보수정</a></li><br/>
			<li><a href="/webApp/memberDel">회원탈퇴</a></li>
		</ul>
	</div>
	<div class="myPageContent">
		<form method="post" action="/webApp/myPageUpdateOk" id="cusUpdateFrm">
			<div class="customerDetail table-responsive">
					<table class='table table-hover'>
						<thead>
							<tr>
								<th>개인 정보 수정</th>
							</tr>
						</thead>	
						<tbody>	
							<tr>
								<th  class="info">고객 ID</th>
								<th class="field">${vo.userId}<input type="hidden" value="${vo.userId}" name="userId"/></th>
							</tr>
							<tr>
								<th  class="info">고객명</th>
								<th class="field">${vo.userName}<input type="hidden" value="${vo.userName}" name="userName"/></th>
							</tr>
							<tr>
								<th  class="info">변경할 비밀번호(미 변경시, 현재 비밀번호 유지됨)</th>
								<th class="field"><input type="password" name="userPwd" id="userPwd" value="${vo.userPwd}"/></th>
							</tr>
							<th  class="info">비밀번호 재확인</th>
								<th class="field"><input type="password" id="userPwdChk" value="${vo.userPwd}"/></th>
							</tr>
							<tr>
								<th  class="info">휴대폰 번호</th>
								<th class="field"><input type="text" name="tel" value="${vo.tel}" placeholder="예) 010-1234-5678"/></th>
							</tr>
							<tr>
								<th  class="info">이메일</th>
								<th class="field"><input type="text" name="email" value="${vo.email}"/></th>
							</tr>					
							<tr>
								<th  class="info">우편번호</th>
								<th class="field"><input type="text" name="zipCode" value="${vo.zipCode}"/></th>
							</tr>
							<tr>
								<th  class="info">주소1</th>
								<th class="field"><input type="text" name="address1" value="${vo.address1}"/></th>
							</tr>
							<tr>
								<th  class="info">주소2</th>
								<th class="field"><input type="text" name="address2" value="${vo.address2}"/></th>
							</tr>
							<tr>
								<th  class="info">등급</th>
								<th class="field">${vo.userRate}</th>
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
								<th class="field"><input type="text" name="homeTel" value="${homeTel}"/></th>
							</tr>
							<tr class="btnRow">
								<th class="btn"><a href="javascript:cusUpdate()">수정하기</a></th>
							</tr>
						</tbody>	
					</table>
			</div>
		</form>	
	</div>	
</div>
<%@ include file="include/footer.jspf"%>	
</body>
</html>






















