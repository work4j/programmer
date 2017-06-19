<!--/*******菜单栏*******/-->
<%@page language="Java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="layui-side layui-bg-black">
	<div class="layui-side-scroll">
		<ul class="layui-nav layui-nav-tree site-demo-nav">
			<li class="layui-nav-item layui-nav-itemed"><a class="javascript:;" href="javascript:;">开发测试<span class="layui-nav-more"></span></a>
				<dl class="layui-nav-child">
					<dd class="${param.root=='index'?'layui-this':''}">
						<a href="<%=basePath%>admin/index">调试预览</a>
					</dd>
				</dl></li>
			<li class="layui-nav-item layui-nav-itemed"><a class="javascript:;" href="javascript:;">用户管理<span class="layui-nav-more"></span></a>
				<dl class="layui-nav-child">
					<dd class="${param.root=='user'?'layui-this':''}">
						<a href="<%=basePath%>admin/user/showUserList">用户信息</a>
					</dd>
					<dd class="${param.root=='index3'?'layui-this':''}">
						<a href="javascript:void(0);">暂无</a>
					</dd>
				</dl></li>
			<li class="layui-nav-item layui-nav-itemed"><a class="javascript:;" href="javascript:;">暂无<span class="layui-nav-more"></span></a>
				<dl class="layui-nav-child">
					<dd class="${param.root=='index4'?'layui-this':''}">
						<a href="javascript:void(0);"> <i class="layui-icon" style="top: 3px;"></i><cite>暂无</cite>
						</a>
					</dd>
					<dd class="${param.root=='index5'?'layui-this':''}">
						<a href="javascript:void(0);"> <i class="layui-icon" style="top: 1px;"></i> <cite>暂无</cite>
						</a>
					</dd>
				</dl></li>

			<li class="layui-nav-item" style="height: 30px; text-align: center"></li>
			<span class="layui-nav-bar"></span>
		</ul>
	</div>
</div>