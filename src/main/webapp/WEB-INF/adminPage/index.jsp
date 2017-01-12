<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>程序员社区后台</title>
<!-- 头部 -->
<%@ include file="common/head_admin.jsp"%> 
</head>
<body>
	<div class="layui-layout layui-layout-admin">
		<!-- 导航栏 -->
		<jsp:include page="common/nav_admin.jsp" />
		<!-- 菜单栏  param::root 菜单栏选项卡定位参数 -->
		<jsp:include page="common/menu_admin.jsp" flush="true">
			<jsp:param value="index" name="root" />
		</jsp:include>
		<!-- 内容 -->
		<div class="layui-body site-demo">
			<div class="site-demo-editor">
				<div class="site-demo-area">
					<textarea id="LAY_editor" spellcheck="false" placeholder="在此处输入代码"></textarea>
				</div>
				<div class="site-demo-btn">
					<button class="layui-btn" id="LAY_demo_run">执行代码</button>
				</div>
			</div>
			<div class="site-demo-result">
				<!-- <iframe frameborder="0" src="./在线演示 - layui_files/layui.html" id="LAY_demo"></iframe> -->
			</div>
		</div>
		<!-- 底部 -->
		<jsp:include page="common/footer_admin.jsp" />
		<!-- 公告js文件 -->
		<jsp:include page="common/import_js_admin.jsp" />
	</div>
	<!-- 当前页js代码 -->
	<script type="text/javascript">
        
    </script>
</body>
</html>