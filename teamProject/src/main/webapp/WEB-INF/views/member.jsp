<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!--   <link rel="stylesheet" href="grid-guide.css">   -->
<link rel="stylesheet" href="/webApp/css/memberStyle.css">
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet">
</head>
<body>
<%@ include file="include/header.jspf"%>

<div class="box6">
<form method="post" action="/webApp/member/joinOk">
	<div id=main>
		<div id="id">
			<input type="text" placeholder=" &nbsp&nbsp아이디" name="userId"/>
			<input type="text" placeholder=" &nbsp&nbsp비밀번호" name="userPwd"/>
			<input type="text" placeholder=" &nbsp&nbsp비밀번호 재확인"/>
		</div>
		<div id="name">
			<input type="text" placeholder=" &nbsp&nbsp이름" name="userName"/><br/>
			
			<div style="width:60vw;height:5vh;text-align:center;border-radius:5px">
				<input type="text" name="zipCode" id="zipcode" size="5" style="width:5.5vw;height:5vh;border-radius:5px" placeholder=" &nbsp우편번호"  />
				<input type="button" value="우편번호검색" style="font-size:1.2rem;width:7vw;height:5vh;border-radius:5px"/>
				<input type="text" name="address1" id="addr" placeholder=" &nbsp&nbsp주소" style="width:23vw;height:5vh;border-radius:5px"/>
			</div>
			
				<input type="text" name="address2" id="addr2" placeholder=" &nbsp&nbsp상세주소"/>	
			<input type="text" placeholder=" &nbsp&nbsp이메일주소" name="email"/>
		</div>
		<div id="tel">
			<input type="text" placeholder=" &nbsp&nbsp전화번호" name="homeTel"/>
			<input type="text" placeholder=" &nbsp&nbsp휴대전화번호" name="tel"/>
		</div>
		<div id="join"><input type="submit" value="√ 가입하기" style="height:6vh;font-size:1.6rem;font-weight:bold;background:#775749;color:white;border-radius:5px"/></div>
		<div id="bottom">
			<a href="">이용약관</a> | <a href="">개인정보처리방침</a> | <a href="">책임의 한계와 법적고지</a> | <a href="">회원정보 고객센터</a><br/>
			<a href="">로고이미지</a> Copyright ⓒ  All Rights Reserved.
		</div>
	</div>
</form>
</div>

<%@ include file="include/footer.jspf"%>	
<script>
 </script>
</body>
</html>