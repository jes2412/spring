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
<link rel="stylesheet" href="/webApp/css/baseBBSStyle.css">
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet">
</head>
<body>
<%@ include file="include/header.jspf"%>

<div class="box6">
<div id="bulletin">
<table style="background-color:#eeeeee;" width="100%" height="40" id="tab">
	<tr align="center">
		<td width="33%" style="background-color:white;"><a href="/webApp/community">Community</a></td>
		<td width="33%" style="background-color:#ed95b7;color:white;"><a href="/webApp/oneAndOne">1:1문의</a></td>
		<td width="33%" style="background-color:white;"><a href="/webApp/notice">공지사항</a></td>
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
  <c:forEach var="vo" items="${list}">
  <c:if test="${vo.category=='notice'}">
   		<li class="a1">뺄거</li>
   		<li class="a2"><span style="display:inline-block;background-color:#8dd33f;width:70px;height:20px;border-radius:10px;font-size:12px;text-align:center;line-height:20px;color:white;margin-right:10px">${vo.category}</span><a href="/webApp/view?num=${vo.bbsNum}">${vo.title}</a></li>
   		<li class="a3">${vo.userId}</li>
   		<li class="a4">${vo.writeDate}</li>
   		<li class="a5">뺼거</li>
   		<li class="a5">${vo.hit}</li>
<c:set var="category" value="${vo.category}"/>   		
 </c:if>		
 </c:forEach>  		
 </ul>  
   	<div id="next">
		<a>1</a>
		<a>2</a>
		<a>3</a>
	</div>
	<span id="write"><a href="/webApp/write?category=${category}">글쓰기</a></span>
 </div>
</div>

<%@ include file="include/footer.jspf"%>	
<script>
 </script>
</body>
</html>