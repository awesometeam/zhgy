var leaves = {};

$(document).ready(function (){
	jQuery('.category-li a').each(function (){
		jQuery(this).click(function (obj){
			var id = $(this).parent().attr('id').substr(9);
			$('#products_showbox').hide();
			event.preventDefault();
			event.stopPropagation();
			jQuery('#products_showbox').load('/zhgy/ProductController.do?action=getProdcutsByCategory&id='+id,function(){
				 $('#products_showbox').fadeIn('fast');
			});
		});
	});
	$("ul.sf-menu").superfish({ 
        animation: {height:'show'},   // slide-down effect without fade-in 
        delay:     500,               // 1.2 second delay on mouseout 
        speed: 'fast'
    }); 
	jQuery('#products_showbox').load('/zhgy/ProductController.do?action=getProdcutsByCategory');
});
