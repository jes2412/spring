function addingBlending(divId, pentagonId, roastingSvgId){
		var str =	'<div id="'+divId+'">'+
								'<div class="blending">'+
									'<div class="myBean"></div>'+
									'<div class="blendingList-arrow"><div class="blendingList"></div></div>'+
								'</div>'+
								'<div class="beanSpec">'+
									'<div class="beanPentagon svg-pentagon" style="width: 300px; text-align: center">'+
									'<svg id="'+pentagonId+'"  width="250" height="250"></svg>'+
								'</div>'+
								'<div class="roastinBar" style="width: 300px; text-align: center;">'+
									'<svg id="'+roastingSvgId+'" height="250" width="150"></svg>'+
								'</div>'+
								'<div class="beanDetail"></div>'+
								'<div class="grindingOption"></div>'+
								'</div>'+
							'</div>';			
		$("#blendings").append(str);
		makingBeanList(divId);
		blendingArrow(divId);
		makeBeanDetail(3,5,1,2,4, divId);
		makeGrindingOption(divId);
		makePentagon(pentagonId,4,4,4,4,4);
		 makeRoastingBar(roastingSvgId);
}

function makingBeanList(divId){
	var beanName = ["freesia","deepPurple", "roasted", "hemlock", "softyBlue","colombiaSupremo","brazil","cayenne","silkyBrown",
		"coral","cokein","dazzlingBlue","freesiaReserve","deepPurpleReserve","silkyBrownReserve","coralReserve","tangerineTango",
		"warmTaupe","fiesta"];
	var str = "<ul>";
	for(i=0; i<beanName.length; i++){
		str += "<li><a href='javascript:beanChoice(\""+beanName[i]+"\", \""+divId+"\")'><img src='/webApp/img/"+beanName[i]+".jpg'></a></li>";
	}
	str += "<li class='beanCnt' style='visibility: hidden'>0</li></ul>";
	$("#"+divId+" .blendingList").append(str);
}
function beanChoice(str, divId){
	if(parseFloat($("#"+divId+" .beanCnt").text())<3){ // 빈카운트는 1, 2, 3 일경우 총 3개까지
		$("#"+divId+" .myBean").append('<li>'+str+' <div  class="inputAndIcon"><input type="number" min="1" max="100">%<i class="fa fa-minus" onclick="beanDel(this.parentElement.parentElement,\''+divId+'\')"></i></div></li>');
		$("#"+divId+" .beanCnt").html(parseFloat($("#"+divId+" .beanCnt").text())+1);
		alert($("#"+divId+" .beanCnt").text());
	} else {alert("3개 이상 안됨")}
}
function beanDel(obj, divId){
	obj.remove();
	$("#"+divId+" .beanCnt").html(parseFloat($("#"+divId+" .beanCnt").text())-1);
	alert(parseFloat($("#"+divId+" .beanCnt").text()));
}
function blendingArrow(divId){
	var str = '<div class="blendingList-arrow-inner">'+
		'<i class="fa fa-chevron-left arrow_left"></i>'+
		'<i class="fa fa-chevron-right arrow_right"></i></div>';
		$("#"+divId+" .blendingList-arrow").append(str);

	var leftArr = $("#"+divId).find(".arrow_left");
	var rightArr = $("#"+divId).find(".arrow_right");
	
	var left = $("#"+divId).find(".blendingList").css("left");
	left = parseFloat(left);
	
	rightArr.on("click", function() {
		if(left>-1200){
			left -=100;
			 $("#"+divId).find(".blendingList").css("left", left);
		}
	})
	leftArr.on("click", function() {
		if(left<0){
			left += 100;
			 $("#"+divId).find(".blendingList").css("left", left);
		}
	})
}

function makeGrindingOption(divId){
	var str ="<h4>분쇄 옵션</h4><ul>"+
	"<li><a href=''>홀빈(분쇄안함)</a></li>"+
	"<li><a href=''>프렌치프레스용</a></li>"+
	"<li><a href=''>핸드드립용</a></li>"+
	"<li><a href=''>커피메이커용</a></li>"+
	"<li><a href=''>더치커피용</a></li>"+
	"<li><a href=''>에스프레스머신용</a></li></ul>";
	$("#"+divId+" .grindingOption").append(str);
}
function makeBeanDetail(sweet, acid, bitter, flavor, body, divId){
	var str = "<h4>원두 정보</h4><ul>";
	str += "<li>단맛 : "+sweet+"</li>";
	str += "<li>신맛 : "+acid+"</li>";
	str += "<li>쓴맛 : "+bitter+"</li>";
	str += "<li>향미 : "+flavor+"</li>";
	str += "<li>바디 : "+body+"</li>";
	str +="<li>로스팅 포인트<br/><h3 style='color:#8a792d'>Medium</h3></li></ul>";
	$("#"+divId+" .beanDetail").append(str);
}

function makePentagon(svgName, p1,p2,p3,p4,p5){
	var svgPentagon = $('#'+svgName);
	var abilityPentagon;
	var points = {
	    base : ["6", "1", "10.7552826", "4.45491503", "8.93892626", "10.045085", "3.06107374", "10.045085", "1.24471742", "4.45491503"],
	    pointsAbility : []
	}
	
	d3.select("#"+svgName).append("g").attr("class", "polygon_g").attr("transform", "translate(88,95)");
	d3.select("#"+svgName).append("g").attr("class", "text_g").attr("transform", "translate(88,95)");
	
	var taste = ["단맛", "산미", "쓴맛", "향미", "바디"];
		for(i=1; i<=5; i++){
	    	d3.select("#"+svgName+" .polygon_g").append("polygon").attr("class","pentagon pentagon-" + (6-i));
	    	d3.select("#"+svgName+" .text_g").append("text").attr("class","text"+i).text(i);
	    	d3.select("#"+svgName+" .text_g").append("text").attr("class","status"+i).text(taste[i-1]);
		}
	    for (i=1;i<=5;i++) {
	        var pointsChildren = 'points' + i;
	        points[pointsChildren] = new Array();
	        for (j=0;j<points.base.length;j++) {
	            points[pointsChildren].push((parseFloat(points.base[j]) * (6 + i * 4)).toFixed(2));
	            points[pointsChildren][j] = parseFloat(points[pointsChildren][j]) - (i * 24);
	        }
	        
	        svgPentagon.find('.pentagon-' + i).attr('points', points[pointsChildren].join(' '));
	        svgPentagon.find(".text"+i).attr("x", 36).attr("y", 18-(i*20)).attr("text-anchor", "middle");
	   }
    svgPentagon.find(".status1").attr("x", 60).attr("y", -80).attr("text-anchor", "middle");
    svgPentagon.find(".status2").attr("x", 140).attr("y", -4).attr("text-anchor", "middle");
    svgPentagon.find(".status3").attr("x", 112).attr("y", 141).attr("text-anchor", "middle");
    svgPentagon.find(".status4").attr("x", -40).attr("y", 141).attr("text-anchor", "middle");
    svgPentagon.find(".status5").attr("x", -70).attr("y", 0).attr("text-anchor", "middle");
    

	    var pentagonAbility = svgPentagon.find('.pentagonAbility');
	    var temp ='0,0 0,0 0,0 0,0 0,0';
	    pentagonAbilityPoints = points['points' + p1][0] + ' ' + points['points' + p1][1] + ' ' +
	                            points['points' + p2][2] + ' ' + points['points' + p2][3] + ' ' +
	                            points['points' + p3][4] + ' ' + points['points' + p3][5] + ' ' +
	                            points['points' + p4][6] + ' ' + points['points' + p4][7] + ' ' +
	                            points['points' + p5][8] + ' ' + points['points' + p5][9];
	  var abilityPentagon =   d3.select("#"+svgName+" .polygon_g").append("polygon").attr("id", "abilityPentagon").attr("class","pentagon").attr("class", "pentagonAbility");
	  abilityPentagon.attr('points', pentagonAbilityPoints);
	  temp = pentagonAbilityPoints;
}

  //나중에 내용변경시킬때 사용할 애들
$("#submit").on("click", function() {
	p1 =  $("#t1").val();
	p2 =  $("#t2").val();
	p3 =  $("#t3").val();
	p4 =  $("#t4").val();
	p5 =  $("#t5").val();
    pentagonAbilityPoints = points['points' + p1][0] + ' ' + points['points' + p1][1] + ' ' +
    points['points' + p2][2] + ' ' + points['points' + p2][3] + ' ' +
    points['points' + p3][4] + ' ' + points['points' + p3][5] + ' ' +
    points['points' + p4][6] + ' ' + points['points' + p4][7] + ' ' +
    points['points' + p5][8] + ' ' + points['points' + p5][9];
	abilityPentagon.attr('points', temp).transition().duration(1500).attr('points', pentagonAbilityPoints);
	temp = pentagonAbilityPoints;
});


function makeRoastingBar(svgName){
	 var rectHeight = 40;
	 var rectWidth = 100;
	 var rectY = 40;
	 var gName = ["MEDIUM", "HIGH", "CITY", "FULLCITY", "FRENCH", "ITALIAN"];
	 var barName = ["mediumBar", "highBar", "cityBar", "fullCityBar", "frenchBar", "italianBar"];
	 var txtName = ["mediumTxt", "highTxt", "cityTxt", "fullCityTxt", "frenchTxt", "italianTxt"];
	 var hexName = ["mediumHex", "highHex", "cityHex", "fullCityHex", "frenchHex", "italianHex"];
	 var colors = ["#8a792d", "#855e29", "#754215", "#63371b", "#4d2c1e", "#382318"];
	 var basePoint = [5, 2.75, 4, 4.5, 2, 4.5, 1, 2.75, 2, 1, 4, 1];

	 for(var i = 0; i<gName.length; i++){
		 d3.select('#'+svgName).append("g").attr("class", gName[i]);
	 	barName[i] = d3.select('#'+svgName+" ."+gName[i]).append("rect").attr("x", 0).attr("y",rectY*i);
	 	barName[i].attr("width", rectWidth).attr("height", rectHeight).attr("stroke", "white").attr("stroke-width", "1").attr("fill", colors[i]);
	 	txtName[i] = d3.select('#'+svgName+" ."+gName[i]).append("text").text(gName[i]).attr("fill", "white").attr("x", 25).attr("y", rectY*i+25);
	 	var hexScale = 8;
	 	var hexX = 0;
	 	var hexY = 0;
	 	var points = "";
	 	for(var p = 0 ; p< basePoint.length; p++){
	 		if(p%2==0){ // x 좌표
	 			points += basePoint[p]*hexScale+hexX+100+", ";
	 		} else { //y좌표
	 			points += basePoint[p]*hexScale+hexY+(rectY*i)+" ";
	 		}
	 	}
	 	hexName[i] = d3.select('#'+svgName+" ."+gName[i]).append("polygon").attr("points", points).attr("fill", colors[i]).attr("opacity", 0);
	  }
	 hexName[0].attr("opacity", 1);
	 
	  $gs = $('#'+svgName).find("g");
	  $before = $gs.find("polygon");
	  $gs.each(function(i) {
	  	$(this).on("click", function(n) {
	  		$(this).parent().find("polygon").css("opacity", 0);
	  		$(this).find("polygon").css("transition-duration", "1s").css("opacity", 1);
	  	})
	  });
 } 
