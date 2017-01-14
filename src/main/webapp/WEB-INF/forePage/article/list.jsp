<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
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
			<div class="content">
				<div class="fly-tab">
					<span> <a href="http://fly.layui.com/jie/">全部</a> <a href="http://fly.layui.com/jie/unsolved/">未结帖</a> <a href="http://fly.layui.com/jie/solved/">已采纳</a> <a href="http://fly.layui.com/jie/wonderful/">精帖</a>
					</span>
					<form action="http://cn.bing.com/search" class="fly-search">
						<i class="iconfont icon-sousuo"></i> <input class="layui-input" autocomplete="off" placeholder="搜索内容，回车跳转" type="text" name="q">
					</form>
					<a href="/programer/fore/article/add" class="layui-btn jie-add">发布问题</a>
				</div>
				<ul class="fly-list">
					<c:forEach var="item" items="${result }" varStatus="items">
						<li class="fly-list-li"><a href="javascript:void(0)" class="fly-list-avatar"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="贤心">
						</a>
							<h2 class="fly-tip">
								<a href="detail_${item.id }">${item.title }</a> <span class="fly-tip-stick">置顶</span>
							</h2>
							<p>
								<span><a href="javascript:void(0)">${item.nickname }</a></span> <span>1天前</span> <span>官方公告</span> <span class="fly-list-hint"> <i class="iconfont" title="回答"></i> 21 <i class="iconfont" title="人气"></i> 1094
								</span>
							</p></li>
					</c:forEach>
				</ul>
				<div style="text-align: center">
					<div class="laypage-main">
						<a href="javascript:void(0)" class="laypage-next">更多求解</a>
					</div>
				</div>
			</div>
		</div>
		<div class="edge">
			<h3 class="page-title">最近一月回答榜 - TOP 12</h3>
			<div class="user-looklog leifeng-rank">
				<span> <a href="http://fly.layui.com/u/168"> <img src="/programer/resources/others/layui/images/user03.jpg"> <cite>贤心</cite> <i>263次回答</i>
				</a> <a href="http://fly.layui.com/u/3059112"> <img src="/programer/resources/others/layui/images/user03.jpg"> <cite>放逐之魚</cite> <i>113次回答</i>
				</a> <a href="http://fly.layui.com/u/26880"> <img src="/programer/resources/others/layui/images/user03.jpg"> <cite>小魔方</cite> <i>92次回答</i>
				</a> <a href="http://fly.layui.com/u/11424"> <img src="/programer/resources/others/layui/images/user02.gif"> <cite>SMALL</cite> <i>72次回答</i>
				</a> <a href="http://fly.layui.com/u/30072"> <img src="/programer/resources/others/layui/images/user02.gif"> <cite>Linyer</cite> <i>68次回答</i>
				</a> <a href="http://fly.layui.com/u/11928"> <img src="/programer/resources/others/layui/images/user01.png"> <cite>第一把菜刀</cite> <i>44次回答</i>
				</a> <a href="http://fly.layui.com/u/67704"> <img src="/programer/resources/others/layui/images/user03.jpg"> <cite>天豆晓</cite> <i>32次回答</i>
				</a> <a href="http://fly.layui.com/u/784224"> <img src="/programer/resources/others/layui/images/user03.jpg"> <cite>Layui_初学者</cite> <i>28次回答</i>
				</a> <a href="http://fly.layui.com/u/625632"> <img src="/programer/resources/others/layui/images/user01.png"> <cite>單克拉的眼淚</cite> <i>25次回答</i>
				</a> <a href="http://fly.layui.com/u/2472624"> <img src="/programer/resources/others/layui/images/user01.png"> <cite>1995青年</cite> <i>22次回答</i>
				</a> <a href="http://fly.layui.com/u/1475208"> <img src="/programer/resources/others/layui/images/user01.png"> <cite>antidote</cite> <i>21次回答</i>
				</a> <a href="http://fly.layui.com/u/336"> <img src="/programer/resources/others/layui/images/user01.png"> <cite>纸飞机</cite> <i>19次回答</i>
				</a>
				</span>
			</div>
			<h3 class="page-title">最近热帖</h3>
			<ol class="fly-list-one">
				<li><a href="http://fly.layui.com/jie/6706.html">layui 分页如何自己用JS 跳转到指定页？</a> <span><i class="iconfont"></i> 6859</span></li>
				<li><a href="http://fly.layui.com/jie/6713.html">为什么社区里搜索后跳转到必应？</a> <span><i class="iconfont"></i> 1398</span></li>
				<li><a href="http://fly.layui.com/jie/6560.html">弹窗中的表单如何利用弹窗的默认按钮进行验证？[解决]</a> <span><i class="iconfont"></i> 1320</span></li>
				<li><a href="http://fly.layui.com/jie/6711.html">近期服务器遭受不明来源的持续攻击</a> <span><i class="iconfont"></i> 1094</span></li>
				<li><a href="http://fly.layui.com/jie/6583.html">简单的后台模板 喜欢的点个赞 蟹蟹</a> <span><i class="iconfont"></i> 431</span></li>
				<li><a href="http://fly.layui.com/jie/6646.html">小程序来了，小程序商店，已提交案例，求点赞</a> <span><i class="iconfont"></i> 397</span></li>
				<li><a href="http://fly.layui.com/jie/6613.html">node.js+layui+bootstrap快速开发企业网站</a> <span><i class="iconfont"></i> 395</span></li>
				<li><a href="http://fly.layui.com/jie/6691.html">从阿里的UI框架扒出来的无限级联juqery扩展库</a> <span><i class="iconfont"></i> 283</span></li>
				<li><a href="http://fly.layui.com/jie/6745.html">ifram 父页面的 【确定】按钮触发页面的form验证</a> <span><i class="iconfont"></i> 281</span></li>
				<li><a href="http://fly.layui.com/jie/6588.html">layui响应式导航菜单</a> <span><i class="iconfont"></i> 249</span></li>
				<li><a href="http://fly.layui.com/jie/6695.html">分享自己的一点劳动成果</a> <span><i class="iconfont"></i> 224</span></li>
				<li><a href="http://fly.layui.com/jie/6599.html">layui-electron api管理工具</a> <span><i class="iconfont"></i> 218</span></li>
				<li><a href="http://fly.layui.com/jie/6744.html">Layim 各平台聊天记录同步问题.</a> <span><i class="iconfont"></i> 206</span></li>
				<li><a href="http://fly.layui.com/jie/6720.html">layui 分页 删除一条数据后 如何刷新当前页</a> <span><i class="iconfont"></i> 200</span></li>
				<li><a href="http://fly.layui.com/jie/6689.html">layui可以商用吗</a> <span><i class="iconfont"></i> 167</span></li>
			</ol>
			<h3 class="page-title">近期热议</h3>
			<ol class="fly-list-one">
				<li><a href="http://fly.layui.com/jie/6711.html">近期服务器遭受不明来源的持续攻击</a> <span><i class="iconfont"></i> 21</span></li>
				<li><a href="http://fly.layui.com/jie/6730.html">layer如何获取 拖动后的坐标位置 offset left和to'p</a> <span><i class="iconfont"></i> 13</span></li>
				<li><a href="http://fly.layui.com/jie/6560.html">弹窗中的表单如何利用弹窗的默认按钮进行验证？[解决]</a> <span><i class="iconfont"></i> 9</span></li>
				<li><a href="http://fly.layui.com/jie/6571.html">layer.msg关闭问题</a> <span><i class="iconfont"></i> 9</span></li>
				<li><a href="http://fly.layui.com/jie/6695.html">分享自己的一点劳动成果</a> <span><i class="iconfont"></i> 8</span></li>
				<li><a href="http://fly.layui.com/jie/6583.html">简单的后台模板 喜欢的点个赞 蟹蟹</a> <span><i class="iconfont"></i> 7</span></li>
				<li><a href="http://fly.layui.com/jie/6719.html">layUI有没有类似bootstrap的栅格系统</a> <span><i class="iconfont"></i> 7</span></li>
				<li><a href="http://fly.layui.com/jie/6558.html">请问下上传图片时生成的表单的问题</a> <span><i class="iconfont"></i> 6</span></li>
				<li><a href="http://fly.layui.com/jie/6735.html">社区增加收藏功能</a> <span><i class="iconfont"></i> 6</span></li>
				<li><a href="http://fly.layui.com/jie/6567.html">laytpl模版引擎不能写select标签....</a> <span><i class="iconfont"></i> 6</span></li>
				<li><a href="http://fly.layui.com/jie/6728.html">如何获取当前拖动的弹层的唯一id啊，比如有好几个弹层</a> <span><i class="iconfont"></i> 6</span></li>
				<li><a href="http://fly.layui.com/jie/6745.html">ifram 父页面的 【确定】按钮触发页面的form验证</a> <span><i class="iconfont"></i> 6</span></li>
				<li><a href="http://fly.layui.com/jie/6582.html">layer如何设置每次只弹一个框，框的内边距，框里按钮之间的距离</a> <span><i class="iconfont"></i> 5</span></li>
				<li><a href="http://fly.layui.com/jie/6573.html">layer弹层内容如果不放在根节点下，弹出的时候就会被遮挡</a> <span><i class="iconfont"></i> 5</span></li>
				<li><a href="http://fly.layui.com/jie/6709.html">刷新图标旋转是需要写一个脚本控制吗</a> <span><i class="iconfont"></i> 5</span></li>
			</ol>
			<div class="fly-link">
				<span>友情链接：</span> <a href="http://layim.layui.com/" target="_blank">LayIM</a> <a href="http://layer.layui.com/" target="_blank">layer</a> <a href="http://www.ttlutuan.com/" target="_blank">天天撸团</a> <a href="http://www.hotcn.top/" target="_blank">国际热点</a> <a href="http://www.bejson.com/"
					target="_blank">JSON在线工具</a> <a href="http://www.smeoa.com/" target="_blank">小微OA</a> <a href="http://www.pmsun.me/" target="_blank">PHP博客</a> <a href="http://www.hibug.cn/" target="_blank">在线Bug管理</a>
			</div>
		</div>
	</div>
	<!-- 导航栏 -->
	<jsp:include page="../common/footer_fore.jsp"></jsp:include>
	<!-- 公共js -->
	<jsp:include page="../common/import_js_fore.jsp"></jsp:include>
	<!-- 当前页面js -->
	<script>
        
    </script>
	<ul class="fly-rbar">
		<li id="F_topbar" class="iconfont icon-top" method="top"></li>
	</ul>
</body>
</html>