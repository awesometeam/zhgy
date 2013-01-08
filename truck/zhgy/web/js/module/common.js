/**
 * 
 */

var maxL = 0;
var minL = null;
var currentL = 0;
var hotPorductInterval = null;

function hotProductMove() {
	
	if((currentL-1)==minL)
		currentL=0;
	else
		currentL--;
	
	$("#hotproductul").css({position: "relative",'left':currentL});
}

$(document).ready(function() {
	
	if($("#hotproductul").length > 0)
	{
		minL = 0- $("#hotproductul").children().length*$("#hotproductul").children()[0].offsetWidth/2;
		
		$("#hotproductul").mouseover(function() {
			clearInterval(hotPorductInterval);
		}).mouseout(function() {
			hotPorductInterval = setInterval(hotProductMove, 20);
		});
		
		hotPorductInterval = setInterval(hotProductMove, 20);
		
	}
	
	if($("#latestproductbox").length > 0)
	{
		var w = $(window).width()*0.98-2*26-2;
		$("#hotproduct").css("width",w+"px");
	}
	
	if($("#latestproductbox_short").length > 0)
	{
		var w = $("#hotproducttitle").width()-2*26-2;
		$("#hotproduct").css("width",w+"px");
	}
	
	var left = (1900 - $(window).width())/2;

	//header pic
	if($("#header").length>0)
		$("#header").css("left","-"+left+"px");
	//menu pic
	if($("#menu_wrapper").length>0)
	{
		$("#menu_wrapper").css("left","-"+left+"px");
	}
	
	if($("ul.sf-menu").length > 0)
	{//category list
		$('ul.sf-menu').superfish({
			animation: 	{height:"show"},
	        delay:		100,
	        speed:		10,
	        autoArrows:	true
		});
	}
	
});