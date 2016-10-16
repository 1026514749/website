<%@ page import="java.util.UUID" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link href="${path}/images/fav.ico" rel="shortcut icon" type="image/x-icon">
<link href="${path}/themes/default/style.css" type="text/css" rel="stylesheet"/>
<link href="${path}/script/ligerui/skins/Aqua/css/ligerui-all.css" type="text/css" rel="stylesheet"/>
<link href="${path}/script/ligerui/skins/ligerui-icons.css" type="text/css" rel="stylesheet"/>
<link href="${path}/script/artDialog/skins/default.css" type="text/css" rel="stylesheet"/>
<link href="${path}/script/zTree/css/zTreeStyle.css" type="text/css" rel="stylesheet"/>
<link href="${path}/script/jquery/jquery-ui.css" type="text/css" rel="stylesheet"/>
<link href="${path}/script/poshytip/tip-violet/tip-violet.css" type="text/css" rel="stylesheet"/>
<link href="${path}/script/lhgdialog/skins/default.css" type="text/css" rel="stylesheet">

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
<script src="${path}/script/common/json2-ext.js" type="text/javascript"></script>

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

<!--[if lte IE 7]>
<script src="${path}/themes/default/style.js" type="text/javascript"></script>
<![endif]-->
