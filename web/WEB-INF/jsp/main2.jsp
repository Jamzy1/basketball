<%@ taglib prefix="controller" uri="http://www.mydomain.com/sample" %>
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>广工篮球社后台管理系统</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        fakeimg {
            height: 400px;
            background: #aaa;
        }
        p{
            font-size: 20px;
        }
    </style>
</head>
<body>
<div class="jumbotron text-center" style="margin-bottom:0">
    <h1>广工篮球社后台管理系统</h1>
    <p>生命不息-运动不止！</p>
</div>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav" >
                <li class="active"><a href="${pageContext.request.contextPath}/staff/toMain2">主页</a></li>
                <li><a href="${pageContext.request.contextPath}/record/allRecord">审核活动记录</a></li>
                <li style="left: 800px"><a href="${pageContext.request.contextPath}/member/toIndex">退出登陆</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div class="row">
            <h2>社团管理入口</h2>
            <p>您可以选择下面的入口管理社团事务</p>
            <ul class="nav nav-pills nav-stacked">
                <li class="active"><a href="${pageContext.request.contextPath}/member/allMember">人员管理</a></li>
                <li class="active"><a href="${pageContext.request.contextPath}/plan/allPlan">策划管理</a></li>
                <li class="active"><a href="${pageContext.request.contextPath}/news/allNews">新闻管理</a></li>
                <li class="active"><a href="${pageContext.request.contextPath}/activity/allActivity">活动管理</a></li>
                <li class="active"><a href="${pageContext.request.contextPath}/supp/allSupp">物资管理</a></li>
            </ul>
            <hr class="hidden-sm hidden-md hidden-lg">
        </div>
    </div>
</div>

<div class="jumbotron text-center" style="margin-bottom:0">
    <p><controller:hello /></p>
</div>
</body>
</html>
