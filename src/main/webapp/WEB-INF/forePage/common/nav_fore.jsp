<!--/*******导航栏*******/-->
<%@page language="Java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="header">
	<div class="main">
		<c:if test="${sessionScope.currentUser != null && sessionScope.currentUser.userType == 1}">
			<a class="logo" style="background: url(<%=basePath%>resources/others/layui/images/logo-1.png) no-repeat" href="<%=basePath %>admin/index" title="Fly">Fly社区</a>
		</c:if>
		<c:if test="${sessionScope.currentUser == null || sessionScope.currentUser.userType != 1}">
			<a class="logo" style="background: url(<%=basePath%>resources/others/layui/images/logo-1.png) no-repeat" href="javacript:void(0);" onclick="layer.msg('欢迎来到程序员社区')" title="Fly">Fly社区</a>
        </c:if>
		<div class="nav">
			<a href="<%=basePath%>fore/article/articleList"> <i class="iconfont icon-wenda"></i>社区
			</a> <a href="<%=basePath%>fore/article/articleList"> <i class="iconfont icon-ui"></i>工具
			</a>
		</div>
		<c:if test="${sessionScope.currentUser != null }">
			<div class="nav-user">
				<a class="avatar" href="javacript:void(0);" onclick="layer.msg('功能开发中')"> <img src="http://q.qlogo.cn/qqapp/101235792/3F2CF40CCA8313F4CC8C4A7044B2ADB4/100"> <cite>${sessionScope.currentUser.nickname }</cite>
				</a>
				<div class="nav">
					<a href="javacript:void(0);" onclick="layer.msg('功能开发中')"><i class="iconfont icon-shezhi"></i>设置</a> <a href="<%=basePath%>fore/logout"><i class="iconfont icon-tuichu" style="top: 0; font-size: 22px;"></i>退了</a>
				</div>
			</div>
		</c:if>
		<c:if test="${sessionScope.currentUser == null }">
			<div class="nav-user">
				<a class="unlogin" href="<%=basePath%>fore/login"><i class="iconfont icon-touxiang"></i></a> <span><a href="<%=basePath%>fore/login">登入</a><a href="<%=basePath%>fore/register">注册</a></span>
				<p class="out-login">
					<a href="javacript:void(0);" onclick="layer.msg('功能开发中')" class="iconfont icon-qq" title="QQ登入"></a> <a href="javacript:void(0);" onclick="layer.msg('功能开发中')" class="iconfont icon-weibo" title="微博登入"></a>
				</p>
			</div>
		</c:if>
	</div>
</div>