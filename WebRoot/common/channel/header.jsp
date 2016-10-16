<%@ page import="java.util.UUID" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    request.setAttribute("path", request.getContextPath());
    request.setAttribute("_uuid_", UUID.randomUUID().toString());

    response.setHeader("pragma", "no-che");
    response.setHeader("cache-control", "no-che");
    response.setDateHeader("expires", 0);
%>

<script type="text/javascript">
    var path = '${path}';
</script>

<script src="${path}/script/jquery/jquery-1.6.1.js" type="text/javascript"></script>
<script src="${path}/script/jquery/jquery-ui-1.7.3.js" type="text/javascript"></script>
<script src="${path}/script/lhgdialog/lhgdialog.js" type="text/javascript"></script>
<script src="${path}/script/artDialog/jquery.artDialog.js" type="text/javascript"></script>
<script src="${path}/script/artDialog/jquery.artDialog.plugin.js" type="text/javascript"></script>
<script src="${path}/script/zTree/jquery.ztree.core.js" type="text/javascript"></script>
<script src="${path}/script/zTree/jquery.ztree.excheck.js" type="text/javascript"></script>
<script src="${path}/script/zTree/jquery.ztree.exedit.js" type="text/javascript"></script>
<script src="${path}/script/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
<script src="${path}/script/validator/jquery.validate.js" type="text/javascript"></script>
<script src="${path}/script/validator/jquery.validate.plugin.js" type="text/javascript"></script>
<script src="${path}/script/poshytip/jquery.poshytip.js" type="text/javascript"></script>
<script src="${path}/script/loadmask/jquery.loadmask.js" type="text/javascript"></script>
<script src="${path}/script/common/json2.js" type="text/javascript"></script>

<script src="${path}/script/ligerui/plugins/base.js" type="text/javascript"></script>
<script src="${path}/script/ligerui/plugins/ligerLayout.js" type="text/javascript"></script>
<script src="${path}/script/ligerui/plugins/ligerMenu.js" type="text/javascript"></script>
<script src="${path}/script/ligerui/plugins/ligerGrid.js" type="text/javascript"></script>
<script src="${path}/script/ligerui/plugins/ligerTab.js" type="text/javascript"></script>
<script src="${path}/script/ligerui/plugins/ligerVerticalTab.js" type="text/javascript"></script>
<script src="${path}/script/ligerui/plugins/ligerTree.js" type="text/javascript"></script>
<script src="${path}/script/ligerui/plugins/ligerResizable.js" type="text/javascript"></script>
<script src="${path}/script/jquery/ajaxfileupload.js" type="text/javascript"></script>
<script src="${path}/script/jquery/jquery.autogrow.js" type="text/javascript"></script>

<script src="${path}/script/common/open.extend.js" type="text/javascript"></script>
<script src="${path}/script/common/pts.js" type="text/javascript"></script>

<!-- 渠道门户系统的公共样式 -->
<link href="${path}/themes/project/common.css" rel="stylesheet" type="text/css" />
<link href="${path}/images/favicon.ico" rel="shortcut icon" type="image/x-icon">
