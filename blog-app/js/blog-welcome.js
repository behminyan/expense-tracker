$(function(){
	$("#login-button").click(function(event){
		event.preventDefault();
		$('form').fadeOut(500);
		$('h1').text("Logging in...");
		$('.wrapper').addClass('form-success');
		$('h1').append("<div class='circle'></div><div class='circle1'></div>");
	});
	/*
	var status = "ON"; //either ON or OFF
	$("#slideThree").click(function(){
		console.log("clicked: "+ status);
		if(status === "ON"){
			$("#bg-bubbles").removeClass("animated");
			status = "OFF";
		}else{
			$("#bg-bubbles").addClass("animated");
			status = "ON";
		}
	});*/
});