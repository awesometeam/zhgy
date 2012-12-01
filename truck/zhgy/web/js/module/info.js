/**
 * 
 */

jQuery(function($) {
	
	
	$('.flexslider').flexslider({
		animation: "slide"
	});
	
	$("#pager").jPages({
        containerID  : "itemContainer",
		first: '首页',
		last: '尾页',
		previous: '上页',
		next: '下页',
        perPage: 10,
        startPage: 1,
//        startRange: 2,
//        midRange: 1,
//        endRange: 2,
//		animation: 'wobble',
//		keyBrowse: true,
		callback    : function( pages, items ){
//			alert(pages);
//			alert(items);
		}
    });
	
	if($("#itemContainer").height() < 300)
		$("#itemContainer").height(300);
	
	minL = 0- $("#hotproductul").children().length*$("#hotproductul").children()[0].offsetWidth/2;
	
	$("#hotproductul").mouseover(function() {
		clearInterval(hotPorductInterval);
	}).mouseout(function() {
		hotPorductInterval = setInterval(hotProductMove, 20);
	});
	
	hotPorductInterval = setInterval(hotProductMove, 20);
	
});
