<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%-- <%@ include file="/WEB-INF/content/decorator/common.jsp" %> --%>
<html>
<head>
    <title>你好</title>
    <c:set var="ctx" value="${pageContext.request.contextPath}" />
</head>
<body>

<p></p>
<form action="${ctx}" method="post">
	<tr>
		<br>
			<label>用户名</label>
			<input type="text" name="username"> </input>
		</br>
		<br>
			<label>密码</label>
			<input type="password" name="password"> </input>
		</br>
		<br>
			<button type="submit">登录</button>
		</br>
		<br>
			<label class="checkbox"><input type="checkbox" name="rememberMe" value="true" checked="checked"/>Remember me </label>
		</br>
	</tr>
</form>
</body>
</html>