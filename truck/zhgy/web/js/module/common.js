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