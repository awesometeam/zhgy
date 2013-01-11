/**
 * 
 */

$(document).ready(function(){
	
	if($("#infodetail").height() < 300)
		$("#infodetail").height(300);
	
	$("#feedback-form-submit").click(function() {
		if(FormUtil.check(document.getElementById("feedback"),true))
		{
			$("#feedback-form").submit();
		}
		return false;
	});
	
	$("#email").blur(function() {
		$("#email-check").removeClass();
		$("#email-check").html("");
		console.log($("#email").val());
//		var reg = /^(?:[a-z\d]+[_\-\+\.]?)*[a-z\d]+@(?:([a-z\d]+\-?)*[a-z\d]+\.)+([a-z]{2,})+$/i;
	    if(FormUtil.check(document.getElementById("email")))
	    {
	    	$("#email-check").addClass("correct");
	    }
	    else
	    {
	    	$("#email-check").addClass("error");
	    	$("#email-check").html("Please enter the right Email address");
	    }
	});
	
	$("#author").blur(function() {
		$("#author-check").removeClass();
		$("#author-check").html("");
		console.log($("#email").val());
		if(FormUtil.check(document.getElementById("author")))
	    {
			$("#author-check").addClass("correct");
	    }
	    else
	    {
	    	$("#author-check").addClass("error");
	    	$("#author-check").html("please enter your name");
	    }
	});
	
});
