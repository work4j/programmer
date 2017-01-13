<!--/*******导航栏*******/-->
<%@page language="Java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="header">
	<div class="main">
		<a class="logo" style="background: url(/programer/resources/others/layui/images/logo-1.png) no-repeat" href="http://fly.layui.com/" title="Fly">Fly社区</a>
		<div class="nav">
			<a href="/programer/fore/article/articleList"> <i class="iconfont icon-wenda"></i>问答
			</a> <a href="/programer/fore/article/articleList"> <i class="iconfont icon-iconmingxinganli" style="top: 2px;"></i>案例
			</a> <a href="/programer/fore/article/articleList"> <i class="iconfont icon-ui"></i>框架
			</a>
		</div>
		<c:if test="${sessionScope.currentUser != null }">
			<div class="nav-user">
				<a class="avatar" href="/user/"> <img src="http://q.qlogo.cn/qqapp/101235792/3F2CF40CCA8313F4CC8C4A7044B2ADB4/100"> <cite>万</cite>
				</a>
				<div class="nav">
					<a href="/user/set/"><i class="iconfont icon-shezhi"></i>设置</a> <a href="/programer/fore/logout"><i class="iconfont icon-tuichu" style="top: 0; font-size: 22px;"></i>退了</a>
				</div>
			</div>
		</c:if>
		<c:if test="${sessionScope.currentUser == null }">
			<div class="nav-user">
				<a class="unlogin" href="<%=basePath%>fore/login"><i class="iconfont icon-touxiang"></i></a> <span><a href="<%=basePath%>fore/login">登入</a><a href="http://fly.layui.com/user/reg/">注册</a></span>
				<p class="out-login">
					<a onclick="layer.msg(&#39;正在通过QQ登入&#39;, {icon:16, shade: 0.1, time:0})" class="iconfont icon-qq" title="QQ登入"></a> <a href="http://fly.layui.com:8098/app/weibo/" onclick="layer.msg(&#39;正在通过微博登入&#39;, {icon:16, shade: 0.1, time:0})" class="iconfont icon-weibo" title="微博登入"></a>
				</p>
			</div>
		</c:if>
	</div>
</div>