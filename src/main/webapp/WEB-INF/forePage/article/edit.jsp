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
		<h2 class="page-title">修改文章</h2>
		<div style="position: relative;">
			<div class="layui-form layui-form-pane" style="width: 50%">
				<form action="edit" method="post" onsubmit="toHtml()">
					<input value="${result.id}" type="hidden" name="id">
					<div class="layui-form-item">
						<label for="L_title" class="layui-form-label">标题</label>
						<div class="layui-input-block">
							<input value="${result.title}" type="text" id="L_title" name="title" required=""
								lay-verify="title" autocomplete="off" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item layui-form-text">
						<div class="layui-input-block">
							<div class="fly-edit">
								<span type="face" title="插入表情"><i
									class="iconfont icon-biaoqing"></i>表情</span><span type="picture"
									title="插入图片：img[src]"><i class="iconfont icon-tupian"></i>图片</span><span
									type="href" title="超链接格式：a(href)[text]"><i
									class="iconfont icon-lianjie"></i>链接</span><span type="code"
									title="插入代码"><i class="iconfont icon-daima"></i>代码</span><span
									type="yulan" title="预览"><i class="iconfont icon-yulan"></i>预览</span>
							</div>
							<textarea name="content" oninput="change()" id="L_content" required=""
								lay-verify="content" placeholder="请输入内容"
								class="layui-textarea fly-editor" style="height: 260px;">${result.content}</textarea>
							<textarea hidden="hidden" id="L_content2" name="htmlContent">${result.htmlContent}</textarea>
						</div>
						<label for="L_content" class="layui-form-label" style="top: -2px;">内容</label>
					</div>
					<div class="layui-form-item">
						<button class="layui-btn" lay-filter="submit1" lay-submit="">提交</button>
					</div>
				</form>
			</div>
			<div
				style="position: absolute; top: 0px; left: 51%; right: 0px; bottom: 0px; background: #E6E6E6; padding: 10px">
				<div>
					预览
				</div>
				<div class="detail" id="yulan">${result.htmlContent}</div>
			</div>
		</div>
		<!-- 导航栏 -->
		<jsp:include page="/WEB-INF/forePage/common/footer_fore.jsp"></jsp:include>
		<!-- 公共js -->
		<jsp:include page="/WEB-INF/forePage/common/import_js_fore.jsp"></jsp:include>

	</div><div id="yulan"></div>
	<!-- 当前页面js -->
	<script>
	    //自定义验证规则
	    var converter = new showdown.Converter();  
	    var rules = {
	        title : function(value) {
	            if (value.length < 2 || value.length > 30) {
	                return '标题在2~30个字符之间';
	            }
	        },
	        content : function(value) {
	            if (value.length < 2 || value.length > 10000) {
	                return '内容在2~10000个字符之间';
	            }
	        }
	    };
	    form.verify(rules);
	    function toHtml(){
	    	$("#L_content2").val(converter.makeHtml($("#L_content").val()));
	    };
	    //监听提交
	     form.on('submit(submit1)', function(data) {
	    });
	    
	    function change(){
	    	$("#yulan").html(converter.makeHtml($("#L_content").val()));
	    }
    </script>
	<ul class="fly-rbar">
		<li id="F_topbar" class="iconfont icon-top" method="top"></li>
	</ul>
</body>
</html>