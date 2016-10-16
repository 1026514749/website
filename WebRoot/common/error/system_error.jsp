<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java"
	import="java.util.*,java.io.PrintWriter,java.io.OutputStream"
	pageEncoding="UTF-8"%>
<%@page import="java.net.URLDecoder"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	request.setAttribute("path", path);
	Exception ex = null;
	if (request.getAttribute("bingo_exception") != null) {
		ex = (Exception) request.getAttribute("bingo_exception");
		request.setAttribute("init", true);
	}
%>
<html>
	<head>
		<title>网页出错</title>
		<base target="_self"/>
		<link type="text/css" rel="stylesheet" href="${path}/common/error/error.css" />
		<%
			String queryString = request.getQueryString();
			if (queryString != null && !queryString.equalsIgnoreCase("")) {
				int index = queryString.indexOf("errMessage");
				if (index >= 0) {
					String message = queryString.substring(index + 11);
					request.setAttribute("message", URLDecoder.decode(message,
							"UTF-8"));
				}
			}
		%>
		
		<script type="text/javascript" src="${path}/common/control/js/win.js"></script>
		
		<script type="text/javascript">
			
			function goBack(){
				window.history.go(-1);
			}
			
			function viewDetail(){
				showCenterModelessDialog("${path}/common/error/error_detail.jsp",800,600, window);
			}
			
			function generateLog(){
				var detial = document.getElementById("detail");
				var logForm = document.getElementById("logForm");
				var trace = document.getElementById("trace");
				trace.value = detial.innerText;
				logForm.submit();
			}			
			
			function getLogGenerator(){
				return "${generateLog}";
			}
			
			function getMessage(){
				return "${message}";
			}
			
			function getText(){
				var detail = document.getElementById("detail");
				return detail.innerText;
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
		<div style="border: 1px solid silver; width: 536px; height: 350px;margin:0 auto; margin-top: 100px;">
			<div style="width: 530px; height: 345px; background-color: #EBF2F8; margin: 2px">
				<div class="err_title">
					<img src="${path}/common/error/images/err_icon.bmp" id="img_title" />
					<img src="${path}/common/error/images/err_title2.jpg"
						id="img_title" />
				</div>
				<table style="width:100%; height: 250px;">
					<tr>
						<td style="vertical-align:top">
							<div style="margin:0px 0px 0px 60px;">
								<div style="width: 351px; height: 24px; background-image: url('${path}/common/error/images/bg_head.bmp');"></div>
								<div align="center" style="width: 351px; background-image: url('${path}/common/error/images/bg_body.bmp');">
									<div style="word-wrap:break-word; width: 336px;text-align: left">
										<span style="color: #666">&nbsp;&nbsp;&nbsp;&nbsp;${message}</span>
										<br/>
										<br/>
										<c:if test="${not empty bingo_exception}">
											<img onclick="viewDetail()"
												style="vertical-align: middle; cursor: pointer" id="icon"
												src="${path}/common/error/images/trace_close.gif" />
											<a id="viewDetail" href="javascript:viewDetail()"
												style="padding-right: 30px; text-decoration: none">
												查看详细信息 </a>
										</c:if>
	
										<c:if test="${not empty generateLog}">
											<img height="21" onclick=javascript:generateLog()
												" style="vertical-align: middle; cursor: pointer" id="icon"
												src="${path}/common/error/images/log.gif" />
											<a href="javascript:generateLog();"
												style="text-decoration: none">生成错误日志文件</a>
										</c:if>
									</dvi>
								</div>
								<div
									style="width: 351px; height: 24px; background-image: url('${path}/common/error/images/bg_bottom.bmp');">

								</div>
							</div>
						</td>
						<td style="vertical-align: bottom;">
							<img src="${path}/common/error/images/err_man.bmp"/>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<hr
			style="FILTER: alpha(opacity =   100, finishopacity =   0, style =   3)"
			width="80%" color=#82CEEE SIZE=3/>
		<div id="detail"
			style="width: 100%; height: 300px; overflow: auto; display: none">
					<span style="font-size: 16px"> <%
		 	if (ex != null) {
		 		ex.printStackTrace(new PrintWriter(out));
		 	}
		 %> </span>
		</div>
		<form id="logForm" action="${path}/${generateLog}.generateLog.do"
			method="post" enctype="ation/x-www-form-urlencoded">
			<input type="hidden" id="message" name="message" value="${message}"/>
			<input type="hidden" id="trace" name="trace" />
		</form>
		<a id="op_back" href="javascript:goBack();" class="combtn"><span><img src="${path}/common/error/images/back.gif" onclick="goBack()"/>返回上一步</span></a>
		<a id="op_close" href="javascript:window.close();" class="combtn"><span><img src="${path}/common/error/images/close.gif" onclick="window.close()"/>关 闭</span></a>
		
	</body>
</html>

