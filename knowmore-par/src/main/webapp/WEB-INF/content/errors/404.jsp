<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/content/decorator/common.jsp" %>
<html lang="en">
<head>
<link href="${ctx}/assets/admin/pages/css/error.css" rel="stylesheet" type="text/css"/>
</head>
<body class="page-404-full-page">
<div class="row">
	<div class="col-md-12 page-404">
		<div class="number">
			 404
		</div>
		<div class="details">
			<h3>啊哦！页面找不到咯.</h3>
			<p>
				 说了找不到你要看的页面<br/>
				<a href="${ctx}/index">
				回到老家 </a>
				或者在搜索框输入点东西玩，不过应该不会有反应
			</p>
			<form action="javascript:;">
				<div class="input-group input-medium">
					<input type="text" class="form-control" placeholder="keyword...">
					<span class="input-group-btn">
					<button type="submit" class="btn blue"><i class="fa fa-search"></i></button>
					</span>
				</div>
				<!-- /input-group -->
			</form>
		</div>
	</div>
</div>
</body>
</html>