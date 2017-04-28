	$(document).ready(function() {
		var leftArr =  $("#arrow_left");
		var rightArr = $("#arrow_right");
		$slider = $(".box6-inner");
		var left = $slider.css("left");
		left = parseFloat(left);
		
		rightArr.on("click", function() {
			if(left>-1800){
				left -=150;
				$slider.css("left", left);
			}
		})
		leftArr.on("click", function() {
			if(left<0){
				left += 150;
				$slider.css("left", left)
			}
		})
	});
	var count = 1;
	var sum = 0;
	function change(price) {
		count = document.getElementById("count").value;
		sum = count * price;
		document.getElementById("sum").innerHTML = sum;
	}