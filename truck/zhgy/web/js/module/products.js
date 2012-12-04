var leaves = {};

$(document).ready(function (){
	jQuery.each(categories,function(index, c){
		if(c.havehigher == "0")
			return;
		if(leaves[c.higherid] == undefined){
			leaves[c.higherid] = new Array();
		}
			leaves[c.higherid].push(c);
	});	
	gen_category_tree(leaves);
});

function gen_category_tree(leaves){
	for(i in leaves){
		var leaf = leaves[i];
		var parent = jQuery('#category-'+leaf[0].higherid);
		parent.append('<ul></ul>');
		parent = jQuery('#category-'+leaf[0].higherid+' ul');
		jQuery.each(leaf,function(index, l){
			parent.append('<li><a href="#">'+l.name+'</a></li>');
		});	
	}
}
