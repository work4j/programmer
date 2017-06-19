<!--/*******底部引入js*******/-->
<%@page language="Java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<script src="<%=basePath %>resources/others/layui/lay/dest/layui.all.js" charset="utf-8"></script>
<script src="<%=basePath %>resources/others/markdown/showdown.min.js" charset="utf-8"></script>
<script src="<%=basePath %>resources/js/common.js" charset="utf-8"></script>
