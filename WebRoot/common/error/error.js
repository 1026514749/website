function rightRefuse(message){
	var url = Global.contextPath + '/common/error/access_refuse.jsp'
	if(message)
		url = url + '?errMessage='+message;
	window.location = encodeURI(url);
}

function systemErr(message){
	var url = Global.contextPath + '/common/error/system_error.jsp';
	if(message)
		url = url + '?errMessage='+message;
	window.location = encodeURI(url);
}

function businessErr(message, operations){
	var url = Global.contextPath + '/common/error/business_error.jsp';
	if(message)
		url = url + '?errMessage='+message;
	if(operations){
		url = url + '&operations='+getOperationString(operations);
	}
	window.location = encodeURI(url);
}

function getOperationString(operations){
	var opString ='';
	if(operations instanceof Array){
		for(var i = 0; i < operations.length; i++){
			var op = operations[i];
			opString = opString + op;
			if(i < operations.length - 1)
				opString = opString + ',';
		}
	}
	else
		opString = operations;
	return opString;
}