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
<link rel="stylesheet" href="/webApp/css/memberStyle.css">
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet">
</head>
<body>

<div class="box6">
<div id="main1">
<form method="post" action="/webApp/admin/loginOk">
	<div id="id_pwd">
		<input type="text" placeholder=" &nbsp&nbsp아이디" name="adminId"/>
		<input type="text" placeholder=" &nbsp&nbsp비밀번호" name="adminPwd"/>
	</div>
	<div id="login"><input type="submit" value="로그인" style="height:6vh;font-size:1.6rem;font-weight:bold;background:#775749;color:white;border-radius:5px"/></div>
	<div style="border-bottom:1px solid #dadada;width:60%;height:50px;margin:0 auto"></div><br/>
</form>
</div>
</div>

<script>
 </script>
</body>
</html>