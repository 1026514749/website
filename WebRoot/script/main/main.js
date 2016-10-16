/* 
 * JS Document
 * Date: 2014-07-09
 */

$(function(){
//tab切换
	$('.kbaseTab .tabtit ul li').click(function(){
		$(this).addClass("on").siblings().removeClass();
		$('.tabcontent > ul').eq($('.kbaseTab .tabtit ul li').index(this)).show().siblings().hide();
	});
	$('.tabtit ul li').click(function(){
		$(this).addClass("on").siblings().removeClass();
		$('.tabcontent > .tabinfo').eq($('.tabtit ul li').index(this)).show().siblings().hide();
	});

	$('.tabvtit ul li').click(function(){
		$(this).addClass("cur").siblings().removeClass();
		$('.tabVcontent > .tableWrap').eq($('.tabvtit ul li').index(this)).show().siblings().hide();
	});


	//分类搜索
	$('.SearchTab').hover(function (){
		$(this).addClass("SearchTabHover");
		/*	$('.SearchTab a').unbind('click')*/
		$('.SearchTab ul li a').click(function () {
			var text=$(this).text();
			$('.SearchTab').removeClass("SearchTabHover");
			$('#showtext').removeClass("myHideClass");
			$('#showtext').addClass("myShowClass");
			$('#showtext').text(text);
			$(this).attr("parkId");
			var parkId = $(this).attr("parkId");
			$('#showtext').attr("parkID", parkId);
		});
	},function (){
		$(this).removeClass("SearchTabHover");
	});

	//模块说明
	$('.tips a.close').click(function(){
		$(this).closest(".tips").hide();
	});


	//搜索关键字
	$(".serach-text").focus(function(){
		if($(this).val()=="设备名称/地址/告警信息/解决办法"){
			$(this).val("").css({"color":"#333333","border":"none"});
		}
	});
	$(".serach-text").blur(function(){
		if($(this).val()==""){
			$(this).val("设备名称/地址/告警信息/解决办法").css("color","#999999");
		}
	});

	//
	$("a.close").click(function(){
		$(this).closest(".dialogBox").hide();
	});

	$("#dialogA").click(function(){
		$("#dialogBox").show();
	});



	$(".fixBtnInput").click(function(){
		//alert("s");
		$(this).closest("tr").find(".changeinput").hide().next().show();
		$(this).hide().next().show();
		//alert("d");
	});
	$(".fixBtnInputS").click(function(){
		$(this).hide().prev().show();
		for(var i=1;i<4;i++){
			$(this).closest("tr").find(".inputC"+i).html($(this).closest("tr").find(".input"+i).val());
		}
		$(this).closest("tr").find(".changeinput").show().next().hide();

	});
});