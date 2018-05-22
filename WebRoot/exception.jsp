<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
<style type="text/css">
body {
	background-color: #DAF5F5;
}

.STYLE4 {
	color: #03515d;
	font-size: 13px;
}
-->
</style>
</head>
<body>
<span class="STYLE4">
<c:if test="${!empty exception.message}">
${exception.message};
</c:if>
<c:if test="${empty exception.message}">
请正确操作！如不能继续操作，请与管理员联系。
</c:if>
</span>
</body>
</html>