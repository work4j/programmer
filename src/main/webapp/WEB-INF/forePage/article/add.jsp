<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>程序员社区</title>
<!-- 头部 -->
<%@ include file="/WEB-INF/forePage/common/head_fore.jsp"%>
</head>
<body>
	<!-- 导航栏 -->
	<jsp:include page="/WEB-INF/forePage/common/nav_fore.jsp"></jsp:include>
	<div class="main layui-clear">
		<h2 class="page-title">发布文章</h2>
		<div class="layui-form layui-form-pane">
			<form action="add" method="post">
				<div class="layui-form-item">
					<label for="L_title" class="layui-form-label">标题</label>
					<div class="layui-input-block">
						<input type="text" id="L_title" name="title" required="" lay-verify="title" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item layui-form-text">
					<div class="layui-input-block">
						<div class="fly-edit">
							<span type="face" title="插入表情"><i class="iconfont icon-biaoqing"></i>表情</span><span type="picture" title="插入图片：img[src]"><i class="iconfont icon-tupian"></i>图片</span><span type="href" title="超链接格式：a(href)[text]"><i class="iconfont icon-lianjie"></i>链接</span><span type="code" title="插入代码"><i
								class="iconfont icon-daima"></i>代码</span><span type="yulan" title="预览"><i class="iconfont icon-yulan"></i>预览</span>
						</div>
						<textarea id="L_content" name="content" required="" lay-verify="content" placeholder="请输入内容" class="layui-textarea fly-editor" style="height: 260px;"></textarea>
					</div>
					<label for="L_content" class="layui-form-label" style="top: -2px;">内容</label>
				</div>
				<!-- <div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label">所在类别</label>
						<div class="layui-input-block">
							<select lay-verify="required" name="class">
								<option></option>
								<optgroup label="Layui相关">
									<option value="0">layui</option>
									<option value="2">layer弹层</option>
									<option value="3">LayIM即时通讯</option>
								</optgroup>
								<optgroup label="其它交流">
									<option value="100">技术闲谈</option>
									<option value="101">建议反馈</option>
									<option value="168">官方公告</option>
								</optgroup>
							</select>
							<div class="layui-unselect layui-form-select">
								<div class="layui-select-title">
									<input type="text" placeholder="请选择" value="" readonly="" class="layui-input layui-unselect"><i class="layui-edge"></i>
								</div>
								<dl class="layui-anim layui-anim-upbit layui-select-group">
									<dt>Layui相关</dt>
									<dd lay-value="0" class="">layui</dd>
									<dd lay-value="2" class="">layer弹层</dd>
									<dd lay-value="3" class="">LayIM即时通讯</dd>
									<dt>其它交流</dt>
									<dd lay-value="100" class="">技术闲谈</dd>
									<dd lay-value="101" class="">建议反馈</dd>
									<dd lay-value="168" class="">官方公告</dd>
								</dl>
							</div>
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label">悬赏飞吻</label>
						<div class="layui-input-block">
							<select name="experience">
								<option value="5">5</option>
								<option value="20">20</option>
								<option value="50">50</option>
								<option value="100">100</option>
							</select>
							<div class="layui-unselect layui-form-select">
								<div class="layui-select-title">
									<input type="text" placeholder="5" value="5" readonly="" class="layui-input layui-unselect"><i class="layui-edge"></i>
								</div>
								<dl class="layui-anim layui-anim-upbit">
									<dd lay-value="5" class="layui-this">5</dd>
									<dd lay-value="20" class="">20</dd>
									<dd lay-value="50" class="">50</dd>
									<dd lay-value="100" class="">100</dd>
								</dl>
							</div>
						</div>
					</div>
				</div> -->
				<!-- <div class="layui-form-item">
					<label for="L_vercode" class="layui-form-label">人类验证</label>
					<div class="layui-input-inline">
						<input type="text" id="L_vercode" name="vercode" required="" lay-verify="required" placeholder="请回答后面的问题" autocomplete="off" class="layui-input">
					</div>
					<div class="layui-form-mid">
						<span style="color: #c00;">Fly社区采用Node.js编写，yes or no？</span>
					</div>
				</div> -->
				<div class="layui-form-item">
					<button class="layui-btn" lay-filter="*" lay-submit="">立即发布</button>
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
	    //自定义验证规则
	    var rules = {
	        title : function(value) {
	            if (value.length < 2 || value.length > 30) {
	                return '标题在2~30个字符之间';
	            }
	        },
	        content : function(value) {
	            if (value.length < 2 || value.length > 2000) {
	                return '内容在2~2000个字符之间';
	            }
	        }
	    };
	    form.verify(rules);
	    //监听提交
	     form.on('submit(submit1)', function(data) {
	    });
    </script>
	<ul class="fly-rbar">
		<li id="F_topbar" class="iconfont icon-top" method="top"></li>
	</ul>
</body>
</html>