<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index</title>
</head>
<body>
  <%@ include file="/common/new_header.jsp" %>
</body>
<script type="text/javascript">
$(function(){
	$.ajax();
	pts.submit({
		url:"login.do",
		yesClick: function(data){
            alert(JSON.stringify(data));
         }
	})
});
</script>
<input id="text" value = "aaa">
</html>