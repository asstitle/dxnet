//输出元素位于网页的位置
var getTop = function(el) {
	var actualTop = el.offsetTop;
	var current = el.offsetParent;
	while (current !== null) {
		actualTop += current.offsetTop;
		current = current.offsetParent;
	}
	return actualTop;
}
//获取屏幕低到网页顶端的高度
var gH= function(){
	var sW = window.screen.availWidth;
	var sH = window.screen.availHeight;
	//sN滚动条据顶端距离
	var sN = document.documentElement.scrollTop||document.body.scrollTop;
	return(sN+sH)
}
//传入元素和需要的类名和初始类名
function screenH(ele,cla,clas){
	//底部元素距离顶部的距离
	var fH=document.getElementById("footer");
	var actualTop = fH.offsetTop;
	// var current = fH.offsetParent;
	// while (current !== null) {
	// 	actualTop += current.offsetTop;
	// 	current = current.offsetParent;
	// }
	if (gH() > 2400) {
		ele.style.display="block";
	}else{
		ele.style.display="none"
	}
	if(actualTop <= gH()){
		ele.className= clas + " " + cla;
	}else{
		ele.className= clas;
	}
	oSldE();
	oSldT();
}
//0.4倍屏幕高度
var eSld=window.screen.availHeight*0.4;
//判断元素是否小于屏幕0.6倍
var oSldE=function(){
	//local点数组获取
	var eLocal=document.getElementsByClassName('localtips');
	//循环每一个元素
	for(i=0;i<eLocal.length;i++){
		if(eLocal[i].offsetHeight!=0){
			var eHid=getTop(eLocal[i]) - gH() + eSld;
			console.log(eHid)
			if(eHid < 0){
				eLocal[i].style.height=0;
				$(eLocal[i]).next().animate({opacity: 1},1000);
			}
			break;
		}

	}
}
var oSldT=function(){
	var eFlot=document.getElementById("banner_ctl");
	var eFlot1=document.getElementById("banner_ctl_cont");
	if(gH()>(window.screen.availHeight+160)){
		eFlot.style.bottom=96+"px";
		eFlot1.style.top=72+"px";
		eFlot1.style.opacity=1;
		eFlot1.style.filter='alpha(opacity:'+100+')';
	}
}