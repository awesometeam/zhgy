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

jQuery(function($) {
	
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
	
	var left = (1900 - $(document).width())/2;

	//header pic
	$("#header").css("left","-"+left+"px");
	//menu pic
	$("#menu_wrapper").css("left","-"+left+"px");
	
	if($("ul.sf-menu").length > 0)
	{//category list
		$('ul.sf-menu').superfish({
			animation: 	{height:'show'},
	        delay:		300,
	        speed:		'fast',
	        autoArrows:	true
		});
	}
	
});