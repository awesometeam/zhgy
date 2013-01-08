$(document).ready(function(){
	
	$("#slideshow").Xslider({
		// 默认配置
		affect: 'scrollx', //效果  有scrollx|scrolly|fade|none
		speed: 800, //动画速度
		space: 6000, //时间间隔
		auto: true, //自动滚动
		trigger: 'mouseover', //触发事件 注意用mouseover代替hover
		conbox: '.conbox', //内容容器id或class
		ctag: 'div', //内容标签 默认为<a>
		switcher: '.slideshow-switcher', //切换触发器id或class
		stag: 'a', //切换器标签 默认为a
		current:'slideshow-cur', //当前切换器样式名称
		rand:false //是否随机指定默认幻灯图片
	});
	
//	$('.flexslider').flexslider({
//	    animation: "slide"
//	});
	

//	if($("#informations").height()<$("#introduction").height())
//		$("#informations").height($("#introduction").height());
});


