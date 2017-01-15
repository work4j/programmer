<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>程序员社区</title>
<!-- 头部 -->
<%@ include file="../common/head_fore.jsp"%>
</head>
<body>
	<!-- 导航栏 -->
	<jsp:include page="../common/nav_fore.jsp"></jsp:include>
	<div class="main layui-clear">
		<div class="wrap">
			<div class="content detail">
				<h1>${result.title }</h1>
				<div class="fly-tip fly-detail-hint" data-id="6711">
					<span class="fly-tip-stick">置顶帖</span> <span>未结贴</span>
					<div class="fly-list-hint">
						<i class="iconfont" title="回答"></i> 23 <i class="iconfont" title="人气"></i> 1302
					</div>
				</div>
				<div class="detail-about">
					<a class="jie-user" href="http://fly.layui.com/u/168/"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="贤心"> <cite> ${result.nickname } <em>发布于2天前</em>
					</cite>
					</a>
					<div class="detail-hits" id="LAY_jieAdmin" data-id="6711">
						<span style="color: #FF7200">悬赏：5飞吻</span> <span class="layui-btn layui-btn-mini jie-admin " type="collect" data-type="add">收藏</span>
					</div>
				</div>
				<div class="detail-body photos" style="margin-bottom: 20px;">${result.content }</div>
				<a name="comment"></a>
				<h2 class="page-title">
					热忱回答<span>（<em id="jiedaCount">23</em>）
					</span>
				</h2>
				<ul class="jieda photos" id="jieda">
					<c:if test="${replys.size() == 0 }">
						<li class="fly-none">没有任何评论</li>
					</c:if>
					<c:forEach var="item" items="${replys }">
						<li>
							<div class="detail-about detail-about-reply">
								<a class="jie-user" href="javascript:void(0)"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="${item.nickname }" layer-index="1"> <cite> <i>${item.nickname }</i> <em style="padding: 0; color: #FF7200;">VIP2</em>
								</cite>
								</a>
								<div class="detail-hits">
									<span>${item.replyTime }</span>
								</div>
							</div>
							<div class="detail-body jieda-body">${item.content }</div>
							<div class="jieda-reply">
								<span class="jieda-zan " type="zan"> <i class="iconfont icon-zan"></i> <em>1</em>
								</span> <span type="reply"> <i class="iconfont icon-svgmoban53"></i> 回复
								</span>
							</div>
						</li>
					</c:forEach>
				</ul>
				<div>
					<div id="pageDiv"></div>
				</div>
				<div class="layui-form layui-form-pane">
					<form action="addReply" method="post" class="layui-form">
						<div class="layui-form-item layui-form-text">
							<div class="layui-input-block">
								<div class="fly-edit">
									<span type="face" title="插入表情"><i class="iconfont icon-biaoqing"></i>表情</span><span type="picture" title="插入图片：img[src]"><i class="iconfont icon-tupian"></i>图片</span><span type="href" title="超链接格式：a(href)[text]"><i class="iconfont icon-lianjie"></i>链接</span><span type="code" title="插入代码"><i
										class="iconfont icon-daima"></i>代码</span><span type="yulan" title="预览"><i class="iconfont icon-yulan"></i>预览</span>
								</div>
								<textarea name="content" required="" lay-verify="content" placeholder="我要评论" class="layui-textarea fly-editor" style="height: 150px;"></textarea>
							</div>
						</div>
						<div class="layui-form-item">
							<input type="hidden" name="articleId" value="${result.id }">
							<button class="layui-btn" lay-filter="submit1" lay-submit="">提交评论</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="edge">
			<h3 class="page-title">最近热帖</h3>
			<ol class="fly-list-one">
				<li><a href="http://fly.layui.com/jie/6706.html">layui 分页如何自己用JS 跳转到指定页？</a> <span><i class="iconfont"></i> 6875</span></li>
				<li><a href="http://fly.layui.com/jie/6713.html">为什么社区里搜索后跳转到必应？</a> <span><i class="iconfont"></i> 1409</span></li>
				<li><a href="http://fly.layui.com/jie/6711.html">近期服务器遭受不明来源的持续攻击</a> <span><i class="iconfont"></i> 1302</span></li>
				<li><a href="http://fly.layui.com/jie/6646.html">小程序来了，小程序商店，已提交案例，求点赞</a> <span><i class="iconfont"></i> 423</span></li>
				<li><a href="http://fly.layui.com/jie/6613.html">node.js+layui+bootstrap快速开发企业网站</a> <span><i class="iconfont"></i> 414</span></li>
				<li><a href="http://fly.layui.com/jie/6691.html">从阿里的UI框架扒出来的无限级联juqery扩展库</a> <span><i class="iconfont"></i> 305</span></li>
				<li><a href="http://fly.layui.com/jie/6745.html">ifram 父页面的 【确定】按钮触发页面的form验证</a> <span><i class="iconfont"></i> 292</span></li>
				<li><a href="http://fly.layui.com/jie/6588.html">layui响应式导航菜单</a> <span><i class="iconfont"></i> 259</span></li>
				<li><a href="http://fly.layui.com/jie/6695.html">分享自己的一点劳动成果</a> <span><i class="iconfont"></i> 241</span></li>
				<li><a href="http://fly.layui.com/jie/6599.html">layui-electron api管理工具</a> <span><i class="iconfont"></i> 221</span></li>
			</ol>
			<h3 class="page-title">近期热议</h3>
			<ol class="fly-list-one">
				<li><a href="http://fly.layui.com/jie/6711.html">近期服务器遭受不明来源的持续攻击</a> <span><i class="iconfont"></i> 23</span></li>
				<li><a href="http://fly.layui.com/jie/6730.html">layer如何获取 拖动后的坐标位置 offset left和to'p</a> <span><i class="iconfont"></i> 13</span></li>
				<li><a href="http://fly.layui.com/jie/6760.html">关于lauyi单选框的问题</a> <span><i class="iconfont"></i> 8</span></li>
				<li><a href="http://fly.layui.com/jie/6695.html">分享自己的一点劳动成果</a> <span><i class="iconfont"></i> 8</span></li>
				<li><a href="http://fly.layui.com/jie/6719.html">layUI有没有类似bootstrap的栅格系统</a> <span><i class="iconfont"></i> 7</span></li>
				<li><a href="http://fly.layui.com/jie/6735.html">社区增加收藏功能</a> <span><i class="iconfont"></i> 6</span></li>
				<li><a href="http://fly.layui.com/jie/6646.html">小程序来了，小程序商店，已提交案例，求点赞</a> <span><i class="iconfont"></i> 6</span></li>
				<li><a href="http://fly.layui.com/jie/6745.html">ifram 父页面的 【确定】按钮触发页面的form验证</a> <span><i class="iconfont"></i> 6</span></li>
				<li><a href="http://fly.layui.com/jie/6728.html">如何获取当前拖动的弹层的唯一id啊，比如有好几个弹层</a> <span><i class="iconfont"></i> 6</span></li>
				<li><a href="http://fly.layui.com/jie/6672.html">Jquery设置表单Select标签的初始值不起作用</a> <span><i class="iconfont"></i> 5</span></li>
			</ol>
		</div>
	</div>
	<!-- 导航栏 -->
	<jsp:include page="../common/footer_fore.jsp"></jsp:include>
	<!-- 公共js -->
	<jsp:include page="../common/import_js_fore.jsp"></jsp:include>
	<!-- 当前页面js -->
	<script type="text/javascript">
	var arr = window.location.href.split('?');
	var ar = arr[0];
    var option = {
        listUrl : ar+'?',
        totalPages : ${replys.getPages()},
        page : ${replys.getPageNum()},
        param : {
        }
    };
    tg_basePage(option);        
         //自定义验证规则
         var rules = {
             content : function(value) {
                 if (value.length < 1 || value.length > 2000) {
                     return '评论在1~2000个字符之间';
                 }
             }
         };
         form.verify(rules);
         //监听提交
          form.on('submit(submit1)', function(data) {
              console.log(data.elem) //被执行事件的元素DOM对象，一般为button对象
              console.log(data.form) //被执行提交的form对象，一般在存在form标签时才会返回
              console.log(data.field) //当前容器的全部表单字段，名值对形式：{name: value}
              $.post(data.form.action, data.field, function(d){
                  if(d.status==1){
                      var str = '<li><div class="detail-about detail-about-reply">';
                      str += '<a class="jie-user" href="javascript:void(0)"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="kunhour" layer-index="1"> <cite> <i>kunhour</i></cite></a>';
                      str += '<div class="detail-hits"><span>刚刚</span> </div></div>';
                      str += '<div class="detail-body jieda-body">'+data.field.content+'</div><div class="jieda-reply"><span class="jieda-zan " type="zan"> <i class="iconfont icon-zan"></i> <em>1</em>';
                      str += '</span> <span type="reply"> <i class="iconfont icon-svgmoban53"></i> 回复</span></div></li>';
                      $('#jieda').append(str);
                  }else{
                      layer.msg(d.msg);
                  }
              },'json');
              return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
         });
    </script>
	<ul class="fly-rbar">
		<li id="F_topbar" class="iconfont icon-top" method="top"></li>
	</ul>
</body>
</html>