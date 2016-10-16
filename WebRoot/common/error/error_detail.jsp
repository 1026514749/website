<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*,java.io.PrintWriter,java.io.OutputStream" pageEncoding="UTF-8"%>
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
		<base target="_self"/>
		<title>网页出错</title>
		<link type="text/css" rel="stylesheet"
			href="${path}/common/error/error.css" />

		<script type="text/javascript" src="${path}/common/control/js/win.js"></script>

		<script type="text/javascript">		
			var parantWin = window.dialogArguments;
			function generateLog(){
				var detial = document.getElementById("detail");
				var logForm = window.frames['exportFrame'].getForm();
				var message = window.frames['exportFrame'].getMessage();
				
				logForm.action = "${path}/" + parantWin.getLogGenerator() + ".generateLog.do";
				var trace = window.frames['exportFrame'].getTrace();
				trace.value = detial.innerText;
				message.value = parantWin.getMessage();
				logForm.submit();
			}			
			
			function init(){
				var text = parantWin.getText();
				var detail = document.getElementById("detail");
				detail.innerText = text;
			}
		</script>
	</head>
	<body style="text-align: center" onload="init()">
		<div
			style="border: 1px solid silver; width: 690px; height: 250px; margin-top: 100px;">
			<div style="width: 690px; background-color: #EBF2F8; margin: 10px">
				<div class="err_title">
					<img src="${path}/common/error/images/err_icon.bmp" id="img_title" />
					<img src="${path}/common/error/images/err_title3.jpg"
						id="img_title" />
				</div>
				<table>
					<tr>
						<td>
							<div style="text-align: center;">
								<img height="21" onclick=javascript:generateLog()
											" style="vertical-align: middle; cursor: pointer" id="icon"
											src="${path}/common/error/images/log.gif" />
										<a href="javascript:generateLog()"
											style="text-decoration: none">生成错误日志文件</a>
							</div>
							<div style="height: 300px; overflow: auto;">		
									<div id="detail">

									</div>									
							</div>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<hr
			style="FILTER: alpha(opacity =       100, finishopacity =       0, style =       3)"
			width="80%" color=#82CEEE SIZE=3>
		<div align="center">
				<a id="op_close" href="javascript:window.close();" class="combtn"><span><img src="${path}/common/error/images/close.gif" onclick="window.close()"/>关 闭</span></a>
		</div>

		<iframe id="exportFrame" src="${path}/common/error/log_report.jsp" style="display: none" ></iframe>
	</body>
</html>

