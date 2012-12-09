/**
 * 
 */

jQuery(function($) {
	
	if($("#infodetail").height() < 300)
		$("#infodetail").height(300);
	
	
	minL = 0- $("#hotproductul").children().length*$("#hotproductul").children()[0].offsetWidth/2;
	
	$("#hotproductul").mouseover(function() {
		clearInterval(hotPorductInterval);
	}).mouseout(function() {
		hotPorductInterval = setInterval(hotProductMove, 20);
	});
	
	hotPorductInterval = setInterval(hotProductMove, 20);
	
	$("#feedback-form-submit").click(function() {
		if(FormUtil.checkForEmpty(document.getElementById("feedback")))
		{
			$("#feedback-form").submit();
		}
		return false;
	});
	
});
