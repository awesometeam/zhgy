/**
 * 
 */

jQuery(function($) {
	
	$('.flexslider').flexslider({
		animation: "slide"
	});
	
	minL = 0- $("#hotproductul").children().length*$("#hotproductul").children()[0].offsetWidth/2;
	
	$("#hotproductul").mouseover(function() {
		clearInterval(hotPorductInterval);
	}).mouseout(function() {
		hotPorductInterval = setInterval(hotProductMove, 20);
	});
	
	hotPorductInterval = setInterval(hotProductMove, 20);

//	if($("#informations").height()<$("#introduction").height())
//		$("#informations").height($("#introduction").height());
});


