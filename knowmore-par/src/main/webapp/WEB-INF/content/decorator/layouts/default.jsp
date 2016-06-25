<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/content/decorator/common.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">--%>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <title>ischool:<sitemesh:title/></title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <meta HTTP-EQUIV="pragma" CONTENT="no-cache">
    <meta HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate">
    <meta HTTP-EQUIV="expires" CONTENT="0">
    <sitemesh:head/>
</head>

<body>
<%@ include file="/WEB-INF/content/decorator/layouts/header.jsp" %>
<div class="page-container row-fluid">
<%--     <%@ include file="/WEB-INF/content/common/layouts/left.jsp" %> --%>
    <sitemesh:body/>
</div>
<%@ include file="/WEB-INF/content/decorator/layouts/footer.jsp" %>
</body>
</html>