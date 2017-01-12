<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>用户管理——新增用户</title>
<!-- 头部 -->
<%@ include file="../../common/head_admin.jsp"%>
</head>
<body>
	<div class="layui-layout layui-layout-admin">
		<!-- 导航栏 -->
		<jsp:include page="../../common/nav_admin.jsp" />
		<!-- 菜单栏  param::root 菜单栏选项卡定位参数 -->
		<jsp:include page="../../common/menu_admin.jsp" flush="true">
			<jsp:param value="user" name="root" />
		</jsp:include>
		<!-- 内容 -->
		<div class="layui-body site-demo">
			<div class="layui-main">
				<!--/***** 面包屑 *****/-->
				<div class="layui-elem-quote" style="margin-top: 10px;">
					<span class="layui-breadcrumb"> <a><cite>用户管理</cite></a> <a><cite>新增用户</cite></a>
					</span>
				</div>
				<blockquote class="layui-elem-quote layui-quote-nm" style="color: #FF5722">
					<i class="layui-icon">&#xe60b;</i> 啦啦啦，新增用户。
				</blockquote>
				<!--/*******操作*******/-->
				<form th:action="@{/manage/m/task/add.htm}" id="editForm" role="form" method="post" class="layui-form">
					<input name="avoidRepeatSubmitToken" th:value="${session.avoidRepeatSubmitToken}" type="text" hidden="true"> <input name="type" value="3" hidden="true" />
					<fieldset class="layui-elem-field layui-field-title">
						<legend>用户管理——新增用户</legend>
					</fieldset>
					<div class="layui-form-item">
						<label class="layui-form-label">用户名：<span style="color: red">*</span></label>
						<div class="layui-input-block">
							<input maxlength="55" type="text" name="userName" lay-verify="userName" autocomplete="off" placeholder="请输入用户名" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">密码：<span style="color: red">*</span></label>
						<div class="layui-input-block">
							<input maxlength="55" type="text" name="password" lay-verify="title" autocomplete="off" placeholder="请输入密码" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">真实姓名：<span style="color: red">*</span></label>
						<div class="layui-input-block">
							<input maxlength="55" type="text" name="realName" lay-verify="title" autocomplete="off" placeholder="请输入真实姓名" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">昵称：<span style="color: red">*</span></label>
						<div class="layui-input-block">
							<input maxlength="55" type="text" name="nickname" lay-verify="title" autocomplete="off" placeholder="请输入昵称" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">邮箱：<span style="color: red">*</span></label>
						<div class="layui-input-block">
							<input maxlength="55" type="text" name="email" lay-verify="title" autocomplete="off" placeholder="请输入邮箱" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">用户类型：</label>
						<div class="layui-input-block">
							<input type="radio" name="userType" value="1" title="管理员" checked=""> <input type="radio" name="userType" value="2" title="普通用户">
						</div>
					</div>
					<!-- <div class="layui-form-item layui-form-text">
						<label class="layui-form-label">任务描述：<span style="color: red">*</span></label>
						<div class="layui-input-block">
							<textarea maxlength="265" rows="2" cols="" class="layui-textarea" lay-verify="content" name="content" placeholder="请输入描述"></textarea>
						</div>
					</div> -->
					<div class="layui-form-item">
						<div class="layui-input-block">
							<button class="layui-btn" lay-submit="" lay-filter="submit1">立即提交</button>
							<button type="reset" class="layui-btn layui-btn-primary">重置</button>
						</div>
					</div>
				</form>
			</div>
			<!-- <fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
				<legend>其它</legend>
			</fieldset> -->
			<div class="layui-elem-quote" style="margin-top: 20px;">
				<p>Layui - 精心为你雕琢</p>
			</div>
		</div>
		<!-- 底部 -->
		<jsp:include page="../../common/footer_admin.jsp" />
		<!-- 公告js文件 -->
		<jsp:include page="../../common/import_js_admin.jsp" />
	</div>
	<!-- 当前页js代码 -->
	<script type="text/javascript">
	    var form = layui.form();
	    var $ = layui.jquery;
	     //自定义验证规则
	     var rules = {
             userName : function(value) {
                 if (value.length < 2 || value.length > 45) {
                     return '标题在2~45个字符之间';
                 } else {
                     var flag = true;
                     $.ajax({
                         url : 'checkUserName',
                         type : 'post',
                         data : {
                             username : value
                         },
                         dataType: 'json',
                         async : false,
                         success : function(data){
                             flag = data;
                         }
                     });
                     if(flag){
                         return '用户名已存在';
                     }
                 }
             },
	         title : function(value) {
	             if (value.length < 2 || value.length > 45) {
	                 return '标题在2~45个字符之间';
	             }
	         },
	         age : function(value) {
	             if (value <= 0) {
	                 return '不能小于1哦';
	             }
	         }
	     };
	     form.verify(rules);
	     //监听提交
	      form.on('submit(submit1)', function(data) {
	     });
    </script>
</body>
</html>