<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	request.setAttribute("path", path);
%>
<html>
	<head>
		<title>网页出错</title>
		<link type="text/css" rel="stylesheet"
			href="${path}/common/error/error.css" />
		<script type="text/javascript">
			function goBack(){
				window.history.go(-1);
			}
			
			function none(){
			}
			
			function init(){
				var historyValue= window.history.length;
				var op_back = document.getElementById("op_back");
				var op_close = document.getElementById("op_close");
				if (historyValue== undefined || historyValue ==null || historyValue == 0) {
					//关闭窗口
					op_close.style.display = 'inline';
					op_back.style.display = 'none';
				} else {
					//返回
					op_close.style.display = 'none';
					op_back.style.display = 'inline';
				}
			}
		</script>
	</head>
	<body style="text-align: center" onload="init()">
		<div class="error" style="text-align: left; " >
			<div class="err_title">
				<img src="${path}/common/error/images/err_title1.jpg" id="img_title" />
			</div>
			<div class="err_content" >
				对不起，系统找不到你访问的路径。
				<strong>以下是可能造成的原因：</strong>
				<ul>
					<li style="list-style-type: square; list-style-position: inside">
						<a href="javascript:none()">你访问的系统暂时无法连接。</a>
					</li>
					<li style="list-style-type: square; list-style-position: inside">
						<a href="javascript:none()">系统配置错误。</a>
					</li>
				</ul>
			</div>
		</div>
		<hr style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="80%" color=#82CEEE SIZE=3/>
		<a id="op_back" href="javascript:goBack();" class="combtn"><span><img src="${path}/common/error/images/back.gif" style="cursor: hand" onclick="goBack()"/>返回上一步</span></a>
		<a id="op_close" href="javascript:goBack();" class="combtn"><span><img src="${path}/common/error/images/close.gif" style="cursor: hand" onclick="goBack()"/>关闭</span></a>
	</body>
</html>

