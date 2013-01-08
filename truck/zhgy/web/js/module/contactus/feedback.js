/**
 * 
 */

$(document).ready(function(){
	
	if($("#infodetail").height() < 300)
		$("#infodetail").height(300);
	
	$("#feedback-form-submit").click(function() {
		if(FormUtil.checkForEmpty(document.getElementById("feedback")))
		{
			$("#feedback-form").submit();
		}
		return false;
	});
	
});
