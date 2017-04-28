<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
	ul,li{margin:0px;padding:0px}
	li{list-style-type:none}
	
	#tab{width:1020px;height:900px;text-align:center;margin:0 auto;border:1px solid black}
	#tab1{color:white;width:1020px;height:100px}
	#tab1 div,li{float:left}
	
	#myPage{width:180px;height:100px;line-height:100px;font-size:2em;background-color:#40403d}
	#myPage1{width:840px;height:100px;line-height:100px;font-size:1.2em}
	
	.a1{width:640px;background-color:#4c4c4c}
	.a2{width:100px;font-size:0.7em;background-color:#4c4c4c}
	
	#tab2{width:1020px;height:700px;margin:0 auto}
	#tab2>div{float:left}
	#myShopping_list{width:180px;height:800px;border:1px solid black;background-color:#fafafa;}
	#myShopping_body{width:840px;height:800px;border:1px solid black}
	
	#data{width:800px;height:110px;margin:0 auto;margin-top:15px}
	#data>div{float:left}
		#sysData{width:710px;height:115px;background-color:#ececec;}
			.sys{margin-top:20px;margin-bottom:20px;margin-left:-420px}
			.sys input{border:1px solid #d0d0d0;background:#fff;border-radius:5px;height:28px}
			.sys1{margin-left:-143px;}
				.sys1 span{padding:0 10px}
					.sys1 label{padding-right:7px}
			.yy{width:60px;height:25px;border-radius:5px}
			.mm_dd{width:43px;height:25px;border-radius:5px}
			
		#btn input{width:90px;height:115px;background-color:#775749;font-size:1.3em;color:white}
	
	.myS{margin-top:45px;margin-left:30px; font-size:0.9em;text-align:left;line-height:25px}	
	
	#chk{text-align:left;margin-left:30px;margin-top:30px; font-weight:bold}
</style>
</head>
<body>
<form method="post">
	<div id="tab">
		<div id="tab1">
			<div id="myPage">마이페이지</div>
			<div id="myPage1">
				<ul>
					<li class="a1">김영택님의 멤버십 등급은 블루입니다.</li>
					<li class="a2">등급혜택</li>
					<li class="a2">관심매장</li>			
				</ul>
			</div>
		</div>
		<div id="tab2">
			<div id="myShopping_list">
				<ul class="myS">
					<li><a href="">주문/배송조회</a></li><br/>
					<li><a href="">취소/반품/교환내역</a></li><br/>
					<li><a href="">장바구니</a></li><br/>
					<li><a href="">1:1문의내역</a></li><br/>
					<li><a href="">회원정보수정</a></li><br/>
					<li><a href="">회원탈퇴</a></li>
				</ul>
				<div style="border-bottom:1px solid #dadada;width:100%;height:70px;margin:0 auto"></div>
			</div>
			<div id="myShopping_body">
				<div>
					<h4 id="chk">★주문/배송조회</h4>
				</div>
				<div style="border-bottom:2px solid black;width:95.5%;height:10px;margin:0 auto"></div>
				<div id="data">
					<div id="sysData">
						<div class="sys">
							<input type="button" value="1개월"/>
							<input type="button" value="3개월"/>
							<input type="button" value="6개월"/>
							<input type="button" value="12개월"/>
						</div>
						<div class="sys1">
							<select class="yy">
								<option value="2012">2012</option>
								<option value="2013">2013</option>
								<option value="2014">2014</option>
								<option value="2015">2015</option>
								<option value="2016">2016</option>
								<option value="2017">2017</option>
								<option value="2018">2018</option>
								<option value="2019">2019</option>
								<option value="2020">2020</option>
							</select>
							<label>년</label>
							<select class="mm_dd">
								<option value="01">1</option>
								<option value="02">2</option>
								<option value="03">3</option>
								<option value="04">4</option>
								<option value="05">5</option>
								<option value="06">6</option>
								<option value="07">7</option>
								<option value="08">8</option>
								<option value="09">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
							</select>
							<label>월</label>
							<select class="mm_dd">
								<option value="01">1</option>
								<option value="02">2</option>
								<option value="03">3</option>
								<option value="04">4</option>
								<option value="05">5</option>
								<option value="06">6</option>
								<option value="07">7</option>
								<option value="08">8</option>
								<option value="09">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="01">13</option>
								<option value="02">14</option>
								<option value="03">15</option>
								<option value="04">16</option>
								<option value="05">17</option>
								<option value="06">18</option>
								<option value="07">19</option>
								<option value="08">20</option>
								<option value="09">21</option>
								<option value="10">22</option>
								<option value="11">23</option>
								<option value="12">24</option>
								<option value="01">25</option>
								<option value="02">26</option>
								<option value="03">27</option>
								<option value="04">28</option>
								<option value="05">29</option>
								<option value="06">30</option>
								<option value="07">31</option>
							</select>
							<label>일</label>
							<span> ~ </span>
							<select class="yy">
								<option value="2012">2012</option>
								<option value="2013">2013</option>
								<option value="2014">2014</option>
								<option value="2015">2015</option>
								<option value="2016">2016</option>
								<option value="2017">2017</option>
								<option value="2018">2018</option>
								<option value="2019">2019</option>
								<option value="2020">2020</option>
							</select>
							<label>년</label>
							<select class="mm_dd">
								<option value="01">1</option>
								<option value="02">2</option>
								<option value="03">3</option>
								<option value="04">4</option>
								<option value="05">5</option>
								<option value="06">6</option>
								<option value="07">7</option>
								<option value="08">8</option>
								<option value="09">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
							</select>
							<label>월</label>
							<select class="mm_dd">
								<option value="01">1</option>
								<option value="02">2</option>
								<option value="03">3</option>
								<option value="04">4</option>
								<option value="05">5</option>
								<option value="06">6</option>
								<option value="07">7</option>
								<option value="08">8</option>
								<option value="09">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="01">13</option>
								<option value="02">14</option>
								<option value="03">15</option>
								<option value="04">16</option>
								<option value="05">17</option>
								<option value="06">18</option>
								<option value="07">19</option>
								<option value="08">20</option>
								<option value="09">21</option>
								<option value="10">22</option>
								<option value="11">23</option>
								<option value="12">24</option>
								<option value="01">25</option>
								<option value="02">26</option>
								<option value="03">27</option>
								<option value="04">28</option>
								<option value="05">29</option>
								<option value="06">30</option>
								<option value="07">31</option>
							</select>
							<label>일</label>
						</div>
					</div>
					<div id="btn"><input type="submit" value="조회"/></div>
				</div>
			</div>
		</div>
	
	</div>
</form>
</body>
</html>