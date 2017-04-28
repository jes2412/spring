<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!--   <link rel="stylesheet" href="grid-guide.css">   -->
<link rel="stylesheet" href="/webApp/css/memberDel.css">
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet">
<script>
function pwdChk(){
	if($("#userPwd").val()==$("#userPwdChk").val()){
		$("#memberDelFrm").submit();
	} else {
		alert("비밀번호를 다시 확인하세요");
	}
}
</script>
</head>
<body>
<%@ include file="include/header.jspf"%>
<form method="post" action="/webApp/memberDelOk" id="memberDelFrm">
<div class="box6">
	<div id="main3">
		<div id="Del"><h3>회원 탈퇴</h3></div>
		<div id="id_pwd3">
			<input type="hidden" name="userId" value="${sesUserId}"/>
			<input type="text" placeholder=" &nbsp&nbsp비밀번호" name="userPwd" id="userPwd"/>
			<input type="text" placeholder=" &nbsp&nbsp비밀번호 확인" id="userPwdChk"/>
		</div>
		<div id="login3"><a href="javascript:pwdChk()" style="height:6vh;font-size:1.6rem;font-weight:bold;background:#775749;color:white;border-radius:5px">탈퇴하기</a></div>
		<div style="border-bottom:1px solid #dadada;width:60%;height:50px;margin:0 auto"></div><br/>
		<div id="footer3">
		</div>
	</div>
</div>
</form>
<%@ include file="include/footer.jspf"%>	
<script>
 </script>
</body>
</html>