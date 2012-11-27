/**
 * 
 */

var maxL = 0;
var minL = null;
var currentL = 0;
var hotPorductInterval = null;

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
	
});

function hotProductMove() {
	
	if((currentL-1)==minL)
		currentL=0;
	else
		currentL--;
	
	$("#hotproductul").css({position: "relative",'left':currentL});
}
