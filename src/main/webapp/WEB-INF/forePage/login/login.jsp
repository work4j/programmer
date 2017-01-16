<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>程序员社区——登入</title>
<!-- 头部 -->
<%@ include file="/WEB-INF/forePage/common/head_fore.jsp"%>
</head>
<body>
	<!-- 导航栏 -->
	<jsp:include page="/WEB-INF/forePage/common/nav_fore.jsp"></jsp:include>
	<div class="main layui-clear">
		<h2 class="page-title">登入</h2>
		<div class="layui-form layui-form-pane">
			<form action="login" method="post">
				<div class="layui-form-item">
					<label for="L_email" class="layui-form-label">用户名</label>
					<div class="layui-input-inline">
						<input type="text" id="L_email" name="userName" required="" lay-verify="required" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label for="L_pass" class="layui-form-label">密码</label>
					<div class="layui-input-inline">
						<input type="password" id="L_pass" name="password" required="" lay-verify="required" autocomplete="off" class="layui-input">
					</div>
				</div>
				<c:if test="${msg != null && msg != ''}">
					<div class="layui-form-item">
						<label>${msg}</label>
					</div>
				</c:if>
				<div class="layui-form-item">
					<button class="layui-btn" lay-filter="*" lay-submit="">立即登录</button>
					<span style="padding-left: 20px;"> <a onclick="layer.alert('正在开发中')">忘记密码？</a>
					</span>
				</div>
				<div class="layui-form-item fly-form-app">
					<span>或者使用社交账号登入</span> <a onclick="layer.alert('正在开发中')" class="iconfont icon-qq" title="QQ登入"></a> <a onclick="layer.alert('正在开发中')" class="iconfont icon-weibo" title="微博登入"></a>
				</div>
			</form>
		</div>
	</div>
	<!-- 导航栏 -->
	<jsp:include page="/WEB-INF/forePage/common/footer_fore.jsp"></jsp:include>
	<!-- 公共js -->
	<jsp:include page="/WEB-INF/forePage/common/import_js_fore.jsp"></jsp:include>
	<!-- 当前页面js -->
	<script>
        
    </script>
</body>
</html>