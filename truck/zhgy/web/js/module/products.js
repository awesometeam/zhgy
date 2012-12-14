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
        animation: 	{height:'show'},
        delay:		500,
        speed:		'fast',
        autoArrows:	true
    }); 
	jQuery('#products_showbox').load('/zhgy/ProductController.do?action=getProdcutsByCategory');
});
