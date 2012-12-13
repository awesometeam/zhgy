var leaves = {};

$(document).ready(function (){
	jQuery('.category-li a').each(function (){
		jQuery(this).click(function (obj){
			var id = $(this).parent().attr('id').substr(9);
			jQuery('#products_frame').attr("src","/zhgy/ProductController.do?action=getProdcutsByCategory&id="+id);
		});
	});
	$("ul.sf-menu").superfish({ 
        animation: {height:'show'},   // slide-down effect without fade-in 
        delay:     500,               // 1.2 second delay on mouseout 
        speed: 'fast'
    }); 
	jQuery('#products_showbox').load('/zhgy/ProductController.do?action=getProdcutsByCategory');
});
