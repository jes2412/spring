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
<link rel="stylesheet" href="/webApp/css/cartStyle.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="/webApp/css/pentagon.css">
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
		<div class="cartList" id="cartList0">
			<div class="beanSpec"><svg id="petagonSvg" width="250" height="250"></svg>	</div>
			<div class="beanDetail"></div>
			<div class="seletedBean">
				<ul>
					<li>Freesia 10%</li>
					<li>Freesia  20%</li>
					<li>Freesia  20%</li>
					<li> 분쇄 수준</li>
					<li>프렌치프레스용</li>
				</ul>
			</div><!-- selectedBean -->
			
		</div><!-- cartList -->
	</div>
</div>	
<script>
makePentagon("petagonSvg",2,3,4,5,1);
makeBeanDetail(3 , 2, 3, 2, 1,"cartList0");
</script>
<%@ include file="include/footer.jspf"%>	
</body>
</html>






















