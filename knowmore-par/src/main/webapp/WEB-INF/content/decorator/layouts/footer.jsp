<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/content/decorator/common.jsp" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="utf-8">
<title>Decorator</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport">
<meta content="" name="description">
<meta content="" name="author">
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-menu-fixed" class to set the mega menu fixed  -->
<!-- DOC: Apply "page-header-top-fixed" class to set the top menu fixed  -->
<body>
<!-- BEGIN PRE-FOOTER -->
<div class="page-prefooter">
	<div class="container">
		<div class="row">
			<div class="col-md-3 col-sm-6 col-xs-12 footer-block">
				<h2>关于</h2>
				<p>
					 一点通是一群无志青年，在无意中做出来的一个产物，如果你要找生产者交易或者干一些不可描述的事情。
					 请联系：10086
				</p>
			</div>
			<div class="col-md-3 col-sm-6 col-xs12 footer-block">
				<h2>联系邮箱</h2>
				<div class="subscribe-form">
					<form action="javascript:;">
						<div class="input-group">
							<input type="text" placeholder="mail@email.com" class="form-control">
							<span class="input-group-btn">
							<button class="btn" type="submit">请联系我</button>
							</span>
						</div>
					</form>
				</div>
			</div>
			<div class="col-md-3 col-sm-6 col-xs-12 footer-block">
				<h2>Follow Us On</h2>
				<ul class="social-icons">
					<li>
						<a href="javascript:;" data-original-title="rss" class="rss"></a>
					</li>
					<li>
						<a href="javascript:;" data-original-title="facebook" class="facebook"></a>
					</li>
					<li>
						<a href="javascript:;" data-original-title="twitter" class="twitter"></a>
					</li>
					<li>
						<a href="javascript:;" data-original-title="googleplus" class="googleplus"></a>
					</li>
					<li>
						<a href="javascript:;" data-original-title="linkedin" class="linkedin"></a>
					</li>
					<li>
						<a href="javascript:;" data-original-title="youtube" class="youtube"></a>
					</li>
					<li>
						<a href="javascript:;" data-original-title="vimeo" class="vimeo"></a>
					</li>
				</ul>
			</div>
			<div class="col-md-3 col-sm-6 col-xs-12 footer-block">
				<h2>联系方式</h2>
				<address class="margin-bottom-40">
				电话: 186 9683 3750<br>
				 Email: <a href="mailto:763714665@qq.com">763714665@qq.com</a>
				</address>
			</div>
		</div>
	</div>
</div>
<!-- END PRE-FOOTER -->
<!-- BEGIN FOOTER -->
<div class="scroll-to-top">
	<i class="icon-arrow-up"></i>
</div>
<!-- END FOOTER -->
</body>
<!-- END BODY -->
</html>