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
<link rel="stylesheet" href="/webApp/css/writeStyle.css">
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet">
</head>
<body>
<%@ include file="include/header.jspf"%>

<div class="box6">
<div id="bulletin">
<table style="background-color:#eeeeee" width="100%" height="40px" id="tab">
	<tr align="center">
		<td width="33%" style="background-color:white;"><a href="/webApp/community">Community</a></td>
		<td width="33%" style="background-color:#ed95b7;color:white;"><a href="/webApp/oneAndOne">1:1문의</a></td>
		<td width="33%" style="background-color:white;"><a href="/webApp/notice">공지사항</a></td>
	</tr>	
</table><br/>
<form method="post" action="/webApp/writeOk">
   <div class="head">
   <input type="hidden" value="${category}" name="category"/>
   <input type="hidden" value="${userId}" name="userId"/>
   <input type="hidden" value="${userName}" name="userName"/>
 	  <span style="display:inline-block;background-color:#8dd33f;width:70px;height:20px;border-radius:10px;font-size:12px;text-align:center;line-height:20px;color:white;margin-right:10px">${category}</span>
   		제목 : <input type="text" name="title" id="subject" size="100" >
   </div>
	   <div class="con1">
   		글내용  <br/><textarea name="content" rows="10" cols="112"></textarea>
   </div>
   		<div id="pood">  			
   				<div id="pod">
   					<input type="submit" value="등록"/>
   				</div>  			
   		</div>
</form>		
 </div>
</div>


<%@ include file="include/footer.jspf"%>	
<script>
 </script>
</body>
</html>