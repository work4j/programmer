<!--/******* head *******/-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<meta name="renderer" content="webkit" />
<meta name="description" content="work4j" />
<meta name="author" content="work4j" />
<meta name="keywords" content="work4j" />
<meta name="renderer" content="work4j">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="<%=basePath %>resources/others/layui/css/layui.css" media="all">
<link rel="stylesheet" href="<%=basePath %>resources/others/layui/css/font.css" media="all">
<link rel="stylesheet" href="<%=basePath %>resources/others/layui/css/global.css" media="all">
<link id="layuicss-skinlayercss" rel="stylesheet" href="<%=basePath %>resources/others/layui/css/modules/layer/default/layer.css" media="all">
