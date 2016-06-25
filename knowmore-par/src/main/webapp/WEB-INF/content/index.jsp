<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<c:set var="ctx" value="${pageContext.request.contextPath}" scope="page"/>
<%
    request.setCharacterEncoding("UTF-8");
%>
    <title>首页</title>
</head>
<body>
<c:if test="${empty sessionScope.login_user }">
Hello index!
<a href="${ctx }/login"><input type="button" value="登录"></input></a>
</c:if>
<c:if test="${not empty sessionScope.login_user }">
Welcome user:${ sessionScope.login_user.name }
<a href="${ctx }/logout"><input type="button" value="注销"></input></a>
</c:if>
</body>
</html>