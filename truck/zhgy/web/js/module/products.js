var leaves = {};

$(document).ready(function (){
	jQuery('.category-li a').each(function (){
		jQuery(this).click(function (obj){
			var id = $(this).parent().attr('id').substr(9);
			jQuery('#products_frame').attr("src","/zhgy/ProductController.do?action=getProdcutsByCategory&id="+id);
		});
	});
	$('li.category-li').hover(
			function() { $('ul', this).css('display', 'block'); },
			function() { $('ul', this).css('display', 'none'); });
	
});
