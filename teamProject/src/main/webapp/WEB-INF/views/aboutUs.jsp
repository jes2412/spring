<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!--   <link rel="stylesheet" href="grid-guide.css">  -->
<link rel="stylesheet" href="/webApp/css/aboutUs.css">
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet">
</head>
<body>
<%@ include file="include/header.jspf"%>

<div class="box6">
	<div class="box6-inner">
		<img src="/webApp/img/aboutUs1.jpg">
		<img src="/webApp/img/aboutUs2.jpg">
		<img src="/webApp/img/aboutUs3.jpg">
		<img src="/webApp/img/aboutUs4.jpg">
	</div>
</div>

<div class="box7">
	<h1>찾아오시는 길</h1>
	<h3>서울특별시 중구 퇴계로 83길 19 (주)테즈로스팅</h3>
 	<div id="map"></div>
</div>

<%@ include file="include/footer.jspf"%>	
<script type="text/javascript">
    var marker1;
    var map;
function initMap() {
	var myLatLng = {lat: 37.480644, lng: 126.882396};
  	 map = new google.maps.Map(document.getElementById('map'), {
    center: myLatLng,
    zoom: 15
  	});
   marker1 = new google.maps.Marker({
	  position : myLatLng,
	  map : map, 
	  title : '이게 마크인가?',
	  draggable : true,
	  animation : google.maps.Animation.DROP
  })
  marker1.addListener('click', toggleBounce);
	  var infowindow = new google.maps.InfoWindow({
		    content: "<div>마크누르면 이거 나온다!</div>"
		  });
			marker1.addListener('click',function(){
				infowindow.open(map,marker1);
			});
}

function toggleBounce() {
		  marker1.setAnimation(google.maps.Animation.BOUNCE);
}
    </script>
    <script async defer
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD2kiuic2tOC0nJM5hsXwVf7z-e_mLXB6o
&callback=initMap">
    </script>
</body>
</html>