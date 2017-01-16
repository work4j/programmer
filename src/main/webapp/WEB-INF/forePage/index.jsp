<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>程序员社区</title>
<!-- 头部 -->
<%@ include file="common/head_fore.jsp"%>
</head>
<body>
	<!-- 导航栏 -->
	<jsp:include page="common/nav_fore.jsp"></jsp:include>
	<div class="main layui-clear">
		<div class="wrap">
			<div class="content">
				<div class="fly-tab">
					<span> <a href="http://fly.layui.com/jie/">全部</a> <a href="http://fly.layui.com/jie/unsolved/">未结帖</a> <a href="http://fly.layui.com/jie/solved/">已采纳</a> <a href="http://fly.layui.com/jie/wonderful/">精帖</a>
					</span>
					<form action="http://cn.bing.com/search" class="fly-search">
						<i class="iconfont icon-sousuo"></i> <input class="layui-input" autocomplete="off" placeholder="搜索内容，回车跳转" type="text" name="q">
					</form>
					<a href="/programer/fore/add" class="layui-btn jie-add">发布问题</a>
				</div>
				<ul class="fly-list">
					<li class="fly-list-li"><a href="http://fly.layui.com/u/168" class="fly-list-avatar"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="贤心">
					</a>
						<h2 class="fly-tip">
							<a href="http://fly.layui.com/jie/6711.html">近期服务器遭受不明来源的持续攻击</a> <span class="fly-tip-stick">置顶</span>
						</h2>
						<p>
							<span><a href="http://fly.layui.com/u/168">贤心</a></span> <span>1天前</span> <span>官方公告</span> <span class="fly-list-hint"> <i class="iconfont" title="回答"></i> 21 <i class="iconfont" title="人气"></i> 1094
							</span>
						</p></li>
					<li class="fly-list-li"><a href="http://fly.layui.com/u/168" class="fly-list-avatar"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="贤心">
					</a>
						<h2 class="fly-tip">
							<a href="http://fly.layui.com/jie/5366.html">layui 常见问题的处理和实用干货集锦</a> <span class="fly-tip-stick">置顶</span> <span class="fly-tip-jing">精帖</span>
						</h2>
						<p>
							<span><a href="http://fly.layui.com/u/168">贤心</a></span> <span>2016-11-25</span> <span>技术闲谈</span> <span class="fly-list-hint"> <i class="iconfont" title="回答"></i> 31 <i class="iconfont" title="人气"></i> 9371
							</span>
						</p></li>
					<li class="fly-list-li"><a href="http://fly.layui.com/u/168" class="fly-list-avatar"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="贤心">
					</a>
						<h2 class="fly-tip">
							<a href="http://fly.layui.com/jie/5077.html">2016年度 layui 最佳案例点赞角逐（只剩最后4天时间了）</a> <span class="fly-tip-stick">置顶</span>
						</h2>
						<p>
							<span><a href="http://fly.layui.com/u/168">贤心</a></span> <span>2016-11-15</span> <span>官方公告</span> <span class="fly-list-hint"> <i class="iconfont" title="回答"></i> 95 <i class="iconfont" title="人气"></i> 10004
							</span>
						</p></li>
					<li class="fly-list-li"><a href="http://fly.layui.com/u/336" class="fly-list-avatar"> <img src="/programer/resources/others/layui/images/user01.png" alt="纸飞机">
					</a>
						<h2 class="fly-tip">
							<a href="http://fly.layui.com/jie/4281.html">layui 的 Git仓库，快来Star 提升下人气吖 o_O</a> <span class="fly-tip-stick">置顶</span>
						</h2>
						<p>
							<span><a href="http://fly.layui.com/u/336">纸飞机</a></span> <span>2016-10-15</span> <span>官方公告</span> <span class="fly-list-hint"> <i class="iconfont" title="回答"></i> 42 <i class="iconfont" title="人气"></i> 6326
							</span>
						</p></li>
					<li class="fly-list-li"><a href="http://fly.layui.com/u/3327408" class="fly-list-avatar"> <img src="/programer/resources/others/layui/images/user02.gif" alt="枫谰苍月">
					</a>
						<h2 class="fly-tip">
							<a href="http://fly.layui.com/jie/6767.html">iframe窗口内自定义的按钮调用YES按钮事件</a>
						</h2>
						<p>
							<span><a href="http://fly.layui.com/u/3327408">枫谰苍月</a></span> <span>8分钟前</span> <span>layer弹层</span> <span class="fly-list-hint"> <i class="iconfont" title="回答"></i> 0 <i class="iconfont" title="人气"></i> 3
							</span>
						</p></li>
					<li class="fly-list-li"><a href="http://fly.layui.com/u/3327744" class="fly-list-avatar"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="多幸運">
					</a>
						<h2 class="fly-tip">
							<a href="http://fly.layui.com/jie/6766.html">layer.msg 有时无效的问题！</a>
						</h2>
						<p>
							<span><a href="http://fly.layui.com/u/3327744">多幸運</a></span> <span>9分钟前</span> <span>layer弹层</span> <span class="fly-list-hint"> <i class="iconfont" title="回答"></i> 0 <i class="iconfont" title="人气"></i> 4
							</span>
						</p></li>
					<li class="fly-list-li"><a href="http://fly.layui.com/u/3321528" class="fly-list-avatar"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="源478">
					</a>
						<h2 class="fly-tip">
							<a href="http://fly.layui.com/jie/6765.html">select样式ios端运行没有效果</a>
						</h2>
						<p>
							<span><a href="http://fly.layui.com/u/3321528">源478</a></span> <span>41分钟前</span> <span>layui</span> <span class="fly-list-hint"> <i class="iconfont" title="回答"></i> 0 <i class="iconfont" title="人气"></i> 9
							</span>
						</p></li>
					<li class="fly-list-li"><a href="http://fly.layui.com/u/794808" class="fly-list-avatar"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="city">
					</a>
						<h2 class="fly-tip">
							<a href="http://fly.layui.com/jie/6764.html">layer3.0在ie8中anim没有效果？</a>
						</h2>
						<p>
							<span><a href="http://fly.layui.com/u/794808">city</a></span> <span>51分钟前</span> <span>layer弹层</span> <span class="fly-list-hint"> <i class="iconfont" title="回答"></i> 1 <i class="iconfont" title="人气"></i> 18
							</span>
						</p></li>
					<li class="fly-list-li"><a href="http://fly.layui.com/u/3325728" class="fly-list-avatar"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="908工作室">
					</a>
						<h2 class="fly-tip">
							<a href="http://fly.layui.com/jie/6763.html">TAB框架问题！</a>
						</h2>
						<p>
							<span><a href="http://fly.layui.com/u/3325728">908工作室</a></span> <span>1小时前</span> <span>layui</span> <span class="fly-list-hint"> <i class="iconfont" title="回答"></i> 4 <i class="iconfont" title="人气"></i> 23
							</span>
						</p></li>
					<li class="fly-list-li"><a href="http://fly.layui.com/u/453432" class="fly-list-avatar"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="半年工作白做">
					</a>
						<h2 class="fly-tip">
							<a href="http://fly.layui.com/jie/6762.html">分页组件（只是建议）</a>
						</h2>
						<p>
							<span><a href="http://fly.layui.com/u/453432">半年工作白做</a></span> <span>1小时前</span> <span>layui</span> <span class="fly-list-hint"> <i class="iconfont" title="回答"></i> 3 <i class="iconfont" title="人气"></i> 42
							</span>
						</p></li>
					<li class="fly-list-li"><a href="http://fly.layui.com/u/489888" class="fly-list-avatar"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="木子丶">
					</a>
						<h2 class="fly-tip">
							<a href="http://fly.layui.com/jie/6761.html">layer.photos在winform的webbroswer中打开时，img一直被父级弹出层遮盖，</a>
						</h2>
						<p>
							<span><a href="http://fly.layui.com/u/489888">木子丶</a></span> <span>1小时前</span> <span>layer弹层</span> <span class="fly-list-hint"> <i class="iconfont" title="回答"></i> 0 <i class="iconfont" title="人气"></i> 25
							</span>
						</p></li>
					<li class="fly-list-li"><a href="http://fly.layui.com/u/2787624" class="fly-list-avatar"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="我葱的小猴子">
					</a>
						<h2 class="fly-tip">
							<a href="http://fly.layui.com/jie/6760.html">关于lauyi单选框的问题</a>
						</h2>
						<p>
							<span><a href="http://fly.layui.com/u/2787624">我葱的小猴子</a></span> <span>10小时前</span> <span>layui</span> <span class="fly-list-hint"> <i class="iconfont" title="回答"></i> 5 <i class="iconfont" title="人气"></i> 31
							</span>
						</p></li>
					<li class="fly-list-li"><a href="http://fly.layui.com/u/2085888" class="fly-list-avatar"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="jiancheng_wang">
					</a>
						<h2 class="fly-tip">
							<a href="http://fly.layui.com/jie/6759.html">怎么动态改变文件上传的url</a>
						</h2>
						<p>
							<span><a href="http://fly.layui.com/u/2085888">jiancheng_wang</a></span> <span>12小时前</span> <span>layui</span> <span class="fly-list-hint"> <i class="iconfont" title="回答"></i> 5 <i class="iconfont" title="人气"></i> 41
							</span>
						</p></li>
					<li class="fly-list-li"><a href="http://fly.layui.com/u/3322704" class="fly-list-avatar"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="wild">
					</a>
						<h2 class="fly-tip">
							<a href="http://fly.layui.com/jie/6758.html">弹窗不居中</a>
						</h2>
						<p>
							<span><a href="http://fly.layui.com/u/3322704">wild</a></span> <span>15小时前</span> <span>layer弹层</span> <span class="fly-list-hint"> <i class="iconfont" title="回答"></i> 1 <i class="iconfont" title="人气"></i> 77
							</span>
						</p></li>
					<li class="fly-list-li"><a href="http://fly.layui.com/u/3062640" class="fly-list-avatar"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="NewSoul">
					</a>
						<h2 class="fly-tip">
							<a href="http://fly.layui.com/jie/6757.html">layer.tab 拖动问题</a>
						</h2>
						<p>
							<span><a href="http://fly.layui.com/u/3062640">NewSoul</a></span> <span>15小时前</span> <span>layer弹层</span> <span class="fly-list-hint"> <i class="iconfont" title="回答"></i> 0 <i class="iconfont" title="人气"></i> 46
							</span>
						</p></li>
					<li class="fly-list-li"><a href="http://fly.layui.com/u/3322536" class="fly-list-avatar"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="汪汪汪">
					</a>
						<h2 class="fly-tip">
							<a href="http://fly.layui.com/jie/6756.html">弹框弹出来先加载你们网页再显示弹框 什么情况</a>
						</h2>
						<p>
							<span><a href="http://fly.layui.com/u/3322536">汪汪汪</a></span> <span>15小时前</span> <span>layer弹层</span> <span class="fly-list-hint"> <i class="iconfont" title="回答"></i> 2 <i class="iconfont" title="人气"></i> 26
							</span>
						</p></li>
					<li class="fly-list-li"><a href="http://fly.layui.com/u/1129128" class="fly-list-avatar"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="adam1982">
					</a>
						<h2 class="fly-tip">
							<a href="http://fly.layui.com/jie/6755.html">parent.layer.close(layerIndex);方法中间无法关闭！！！！！！！！！！！</a>
						</h2>
						<p>
							<span><a href="http://fly.layui.com/u/1129128">adam1982</a></span> <span>15小时前</span> <span>layer弹层</span> <span class="fly-list-hint"> <i class="iconfont" title="回答"></i> 1 <i class="iconfont" title="人气"></i> 19
							</span>
						</p></li>
					<li class="fly-list-li"><a href="http://fly.layui.com/u/2085888" class="fly-list-avatar"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="jiancheng_wang">
					</a>
						<h2 class="fly-tip">
							<a href="http://fly.layui.com/jie/6754.html">动态创建的文件上传组件不显示，css好像没有渲染，</a>
						</h2>
						<p>
							<span><a href="http://fly.layui.com/u/2085888">jiancheng_wang</a></span> <span>15小时前</span> <span>layui</span> <span class="fly-list-hint"> <i class="iconfont" title="回答"></i> 1 <i class="iconfont" title="人气"></i> 24
							</span>
						</p></li>
					<li class="fly-list-li"><a href="http://fly.layui.com/u/3293640" class="fly-list-avatar"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="S.Jone">
					</a>
						<h2 class="fly-tip">
							<a href="http://fly.layui.com/jie/6753.html">富文本里面的图片不能编辑大小？</a>
						</h2>
						<p>
							<span><a href="http://fly.layui.com/u/3293640">S.Jone</a></span> <span>16小时前</span> <span>layui</span> <span class="fly-list-hint"> <i class="iconfont" title="回答"></i> 0 <i class="iconfont" title="人气"></i> 62
							</span>
						</p></li>
					<li class="fly-list-li"><a href="http://fly.layui.com/u/3322032" class="fly-list-avatar"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="寻我想知">
					</a>
						<h2 class="fly-tip">
							<a href="http://fly.layui.com/jie/6752.html">急急急急急急急急急急急急问题</a>
						</h2>
						<p>
							<span><a href="http://fly.layui.com/u/3322032">寻我想知</a></span> <span>17小时前</span> <span>layui</span> <span class="fly-list-hint"> <i class="iconfont" title="回答"></i> 1 <i class="iconfont" title="人气"></i> 49
							</span>
						</p></li>
					<li class="fly-list-li"><a href="http://fly.layui.com/u/3250296" class="fly-list-avatar"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="硕果">
					</a>
						<h2 class="fly-tip">
							<a href="http://fly.layui.com/jie/6751.html">贤心大神，我想问下你那个layer.alert在哪里可以设置宽高啊我想搞大一点 觉得有点小了</a>
						</h2>
						<p>
							<span><a href="http://fly.layui.com/u/3250296">硕果</a></span> <span>17小时前</span> <span>layer弹层</span> <span class="fly-list-hint"> <i class="iconfont" title="回答"></i> 1 <i class="iconfont" title="人气"></i> 42
							</span>
						</p></li>
					<li class="fly-list-li"><a href="http://fly.layui.com/u/3321192" class="fly-list-avatar"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="winds">
					</a>
						<h2 class="fly-tip">
							<a href="http://fly.layui.com/jie/6750.html">lay-verify 如果设置多个判定条件呢</a>
						</h2>
						<p>
							<span><a href="http://fly.layui.com/u/3321192">winds</a></span> <span>17小时前</span> <span>layui</span> <span class="fly-list-hint"> <i class="iconfont" title="回答"></i> 2 <i class="iconfont" title="人气"></i> 35
							</span>
						</p></li>
					<li class="fly-list-li"><a href="http://fly.layui.com/u/3321528" class="fly-list-avatar"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="源478">
					</a>
						<h2 class="fly-tip">
							<a href="http://fly.layui.com/jie/6749.html">求解开关效果</a>
						</h2>
						<p>
							<span><a href="http://fly.layui.com/u/3321528">源478</a></span> <span>17小时前</span> <span>技术闲谈</span> <span class="fly-list-hint"> <i class="iconfont" title="回答"></i> 1 <i class="iconfont" title="人气"></i> 34
							</span>
						</p></li>
					<li class="fly-list-li"><a href="http://fly.layui.com/u/3300528" class="fly-list-avatar"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="眼眸深处丶">
					</a>
						<h2 class="fly-tip">
							<a href="http://fly.layui.com/jie/6748.html">执行form.on 中的ajax方法 执行成功后打开一个页面 layer.open不执行，应该怎么写</a>
						</h2>
						<p>
							<span><a href="http://fly.layui.com/u/3300528">眼眸深处丶</a></span> <span>17小时前</span> <span>layer弹层</span> <span class="fly-list-hint"> <i class="iconfont" title="回答"></i> 1 <i class="iconfont" title="人气"></i> 29
							</span>
						</p></li>
					<li class="fly-list-li"><a href="http://fly.layui.com/u/3321192" class="fly-list-avatar"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="winds">
					</a>
						<h2 class="fly-tip">
							<a href="http://fly.layui.com/jie/6747.html">如何通过js调用表单验证？</a>
						</h2>
						<p>
							<span><a href="http://fly.layui.com/u/3321192">winds</a></span> <span>17小时前</span> <span>layui</span> <span class="fly-list-hint"> <i class="iconfont" title="回答"></i> 1 <i class="iconfont" title="人气"></i> 33
							</span>
						</p></li>
					<li class="fly-list-li"><a href="http://fly.layui.com/u/1660680" class="fly-list-avatar"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="阿程">
					</a>
						<h2 class="fly-tip">
							<a href="http://fly.layui.com/jie/6746.html">layer宽度不能自适应</a>
						</h2>
						<p>
							<span><a href="http://fly.layui.com/u/1660680">阿程</a></span> <span>18小时前</span> <span>layer弹层</span> <span class="fly-list-hint"> <i class="iconfont" title="回答"></i> 2 <i class="iconfont" title="人气"></i> 38
							</span>
						</p></li>
				</ul>
				<div style="text-align: center">
					<div class="laypage-main">
						<a href="http://fly.layui.com/jie/page/2/" class="laypage-next">更多求解</a>
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
	<jsp:include page="common/footer_fore.jsp"></jsp:include>
	<!-- 公共js -->
	<jsp:include page="common/import_js_fore.jsp"></jsp:include>
	<!-- 当前页面js -->
	<script>
    </script>
	<ul class="fly-rbar">
		<li id="F_topbar" class="iconfont icon-top" method="top"></li>
	</ul>
</body>
</html>