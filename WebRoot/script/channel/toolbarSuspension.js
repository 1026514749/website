/**
 * User: yaoqy
 * Time: 14-8-25 上午11:53
 */
/*用于流程中快捷工具栏的悬浮置顶*/

//记录快捷工具栏原来在页面上的位置
var naviga_offsetTop = 0;

//IE7不识别getElementsByClassName，为了兼容自定义一个
function my_getElementsByClassName(class_name) {
    var el = [];
    _el = document.getElementsByTagName('*');
    for (var i=0; i<_el.length; i++ ) {
        if (_el[i].className == class_name ) {
            el[el.length] = _el[i];
        }
    }
    return el;
}

//快捷工具栏悬停在顶部
function naviga_stay_top(){
    var a_navigation_bar = [];
    if(document.getElementsByClassName){//Chrome, FF
        a_navigation_bar = document.getElementsByClassName("toolbar-for-show");
    } else {//IE
        a_navigation_bar = my_getElementsByClassName("toolbar-for-show");
    }
    var scrollTop = document.body.scrollTop || document.documentElement.scrollTop;

    if(scrollTop > naviga_offsetTop){
        a_navigation_bar[0].style.top = scrollTop + "px";
    } else {
        a_navigation_bar[0].style.top = naviga_offsetTop + "px";
    }
}

window.onload=function(){

    //获取页面上，快捷工具栏到顶部的位置
    var a_navigation_bar = [];
    if(document.getElementsByClassName){//Chrome, FF
        a_navigation_bar = document.getElementsByClassName("toolbar-for-show");
    } else {//IE
        a_navigation_bar = my_getElementsByClassName("toolbar-for-show");
    }
    naviga_offsetTop = a_navigation_bar[0].offsetTop;

    if( window.attachEvent) //IE
    {
        window.attachEvent("onscroll", naviga_stay_top);
        document.attachEvent("onscroll", naviga_stay_top);
    } else {//Chrome ,FF
        window.addEventListener("scroll", naviga_stay_top,false);
        document.addEventListener("scroll", naviga_stay_top,false);
    }

}