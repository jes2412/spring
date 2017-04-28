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
<link rel="stylesheet" href="/webApp/css/viewStyle.css">
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet">
</head>
<body>
<%@ include file="include/header.jspf"%>

<div class="box6">
<div id="bulletin">
<table style="background-color:#eeeeee" width="100%" height="40px" id="tab">
	<tr align="center">
		<td width="33%" style="background-color:#8dd33f;color:white;"><a href="/webApp/community">Community</a></td>
		<td width="33%" style="background-color:white"><a href="/webApp/oneAndOne">1:1문의</a></td>
		<td width="33%" style="background-color:white"><a href="/webApp/notice">공지사항</a></td>
	</tr>	
</table><br/>
   <div id="head">
   		<span id="im">${vo.category}</span> ${vo.title}<small id="wd" >${vo.writeDate}</small>
   </div>
   		<div id="content">
   			${vo.content}
   		</div>
   		<c:if test="${vo.userId==sesUserId}">
   		<a href="/webApp/bbsUpdate?bbsNum=${vo.bbsNum}">수정</a>
   		<a href="/webApp/bbsDel?bbsNum=${vo.bbsNum}">삭제</a>
   		</c:if>
   		<form method="post" action="/webApp/commentWrite">
   			   <div class="con1">
   			   <input type="hidden" name="userId" value="${vo.userId}">
   			   <input type="hidden" name="bbsNum" value="${vo.bbsNum}">
   				<textarea name="content" rows="5" cols="104"></textarea>
   				<input type="submit" value="댓글쓰기">
   				</div>
   		</form>		
   		<div class="cont">
 		<c:forEach var="cVo" items="${cList}">	
			<input type="hidden" value="${cVo.commentNum}" id="commdent${cVo.commentNum}num"/>
   			<ul id="commen">
   				<li class="com1" id="commdent${cVo.commentNum}content" >${cVo.content}</li>
	   			<li class="com2" id="commdent${cVo.commentNum}userId" >${cVo.userId}</li>
	   			<li class="com3" id="commdent${cVo.commentNum}date" >${cVo.writeDate}</li>
	   			<c:if test="${vo.userId==sesUserId}">
	   			<li class="com4" id="commdent${cVo.commentNum}" onclick="commentEdit(this.id)">수정</li>
	   			<li class="com4"><a href="/webApp/commentsDel?commentNum=${cVo.commentNum}&bbsNum=${vo.bbsNum}">삭제</a></li>
	   			</c:if>
   			</ul>
   		</c:forEach>			
<script>
	function commentEdit(id){
		var commentNum = $("#"+id+"num").val();
		var content = $("#"+id+"content").text();
		var userId = $("#"+id+"userId").text();
		var date = $("#"+id+"date").text();
		var str ='<form method="post" action="/webApp/commentUpdate">' 
		str +=  '<div class="con1">';
		str += '<input type="text" name="userId" value="작성자 : '+userId+'" readonly>';
		str += '<input type="hidden" name="commentNum" value='+commentNum+'>';
		str += '<input type="hidden" name="bbsNum" value="${vo.bbsNum}">';
		str += '<textarea name="content" rows="5" cols="104">'+content+'</textarea>';
		str += '<input type="submit" value="댓글수정"></div></form>';
		$("#"+id).parent().html(str);
	}
</script>   			
   		</div>
   				<div id="pod">
   				  <c:if test="${vo.category=='community'}">
   						<a href="/webApp/community">목록보기</a>
   					</c:if>
   				   <c:if test="${vo.category=='1:1문의'}">
   						<a href="/webApp/oneAndOne">목록보기</a>
   					</c:if>
   					<c:if test="${vo.category=='notice'}">
   						<a href="/webApp/notice">목록보기</a>
   					</c:if>
   					
   				</div>
 </div>
</div>

<%@ include file="include/footer.jspf"%>	
<script>
 </script>
</body>
</html>