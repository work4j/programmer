<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
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
		<div class="wrap">
			<div class="content detail">
				<h1>${result.title }</h1>
				<div class="fly-tip fly-detail-hint" data-id="6711">
					<span class="fly-tip-stick">标签1</span> <span>标签2</span>
					<div class="fly-list-hint">
						<i class="iconfont" title="回答"></i> ${result.replyNum } <i class="iconfont" title="人气"></i> ${result.seeNum }
					</div>
				</div>
				<div class="detail-about">
					<a class="jie-user" href="http://fly.layui.com/u/168/"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="贤心"> <cite> ${result.nickname } <em>发布于<fmt:formatDate value="${result.releaseTime }" pattern="yyyy-MM-dd" /></em>
					</cite>
					</a>
					<div class="detail-hits" id="LAY_jieAdmin" data-id="6711">
						<span style="color: #FF7200">悬赏：5飞吻</span> 
						<span class="layui-btn layui-btn-mini jie-admin " type="collect" data-type="add" onclick="layer.msg('功能开发中')">收藏</span>
						<c:if test="${result.userId == sessionScope.currentUser.id}">
							<a href="edit_${result.id}" class="layui-btn layui-btn-mini jie-admin " type="collect" data-type="add" >修改</a>
						</c:if>
					</div>
				</div>
				<div class="detail-body photos" style="margin-bottom: 20px;">${result.htmlContent }</div>
				<a name="comment"></a>
				<h2 class="page-title">
					评论<span>（<em id="replyCount">${replys.getTotal() }</em>）
					</span>
				</h2>
				<ul class="jieda photos" id="jieda">
					<c:if test="${replys.size() == 0 }">
						<li id="none" class="fly-none">没有任何评论</li>
					</c:if>
					<c:forEach var="item" items="${replys }">
						<li>
							<div class="detail-about detail-about-reply">
								<a class="jie-user" href="javascript:void(0)"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="${item.nickname }" layer-index="1"> <cite> <i>${item.nickname }</i>
									<!--  <em style="padding: 0; color: #FF7200;">VIP2</em> -->
								</cite>
								</a>
								<div class="detail-hits">
									<span><fmt:formatDate value="${item.replyTime }" pattern="yyyy-MM-dd HH:mm:ss" /></span>
								</div>
							</div>
							<div class="detail-body jieda-body">${item.content }</div>
							<div class="jieda-reply">
								<span class="jieda-zan " type="zan"> <i class="iconfont icon-zan"></i> <em>0</em>
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
								<textarea id="content" name="content" required="" lay-verify="content" placeholder="我要评论" class="layui-textarea fly-editor" style="height: 150px;"></textarea>
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
				<c:forEach var="item" items="${top15 }" varStatus="items">
					<li><a href="detail_${item.id }">${item.title }</a> <span><i class="iconfont"></i> ${item.replyNum }</span></li>
				</c:forEach>
			</ol>
			<h3 class="page-title">最新帖子</h3>
            <ol class="fly-list-one">
                <c:forEach var="item" items="${new15 }" varStatus="items">
                    <li><a href="detail_${item.id }">${item.title }</a> <span><i class="iconfont"></i> ${item.replyNum }</span></li>
                </c:forEach>
            </ol>
		</div>
	</div>
	<!-- 导航栏 -->
	<jsp:include page="/WEB-INF/forePage/common/footer_fore.jsp"></jsp:include>
	<!-- 公共js -->
	<jsp:include page="/WEB-INF/forePage/common/import_js_fore.jsp"></jsp:include>
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
              $('#content').val('');
              $.post(data.form.action, data.field, function(d){
                  if(d.status==1){
                      var str = '<li><div class="detail-about detail-about-reply">';
                      str += '<a class="jie-user" href="javascript:void(0)"> <img src="/programer/resources/others/layui/images/user03.jpg" alt="kunhour" layer-index="1"> <cite> <i>${sessionScope.currentUser.nickname }</i></cite></a>';
                      str += '<div class="detail-hits"><span>刚刚</span> </div></div>';
                      str += '<div class="detail-body jieda-body">'+data.field.content+'</div><div class="jieda-reply"><span class="jieda-zan " type="zan"> <i class="iconfont icon-zan"></i> <em>0</em>';
                      str += '</span> <span type="reply"> <i class="iconfont icon-svgmoban53"></i> 回复</span></div></li>';
                      if($('#none').length > 0){
                          $('#none').remove();
                      }
                      $('#jieda').append(str);
                      $('#replyCount').text(parseInt($('#replyCount').text())+parseInt(1));
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