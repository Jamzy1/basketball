<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="controller" uri="http://www.mydomain.com/sample" %>


<html>
<head>
  <meta charset="utf-8">
  <title>广工篮球社</title>
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
  <h1>欢迎进入广工篮球社</h1>
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
        <li class="active"><a href="${pageContext.request.contextPath}/member/toMain">主页</a></li>
        <li><a href="${pageContext.request.contextPath}/record/toAddRecord">添加活动记录</a></li>
        <li ><a href="${pageContext.request.contextPath}/file/toUpload">提交反馈文档</a></li>
        <li ><a href="${pageContext.request.contextPath}/file/download">下载社团章程</a></li>
        <li style="left: 800px">
          <c:if test="${empty userLoginInfo}">
            <a href="${pageContext.request.contextPath}/member/toIndex">请登录</a>
          </c:if>
          <c:if test="${not empty userLoginInfo}">
            <a>欢迎${userLoginInfo}</a>
          </c:if>
        </li>
        <li style="left: 800px"><a href="${pageContext.request.contextPath}/member/goOut">退出登陆</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <h2>关于篮球</h2>
      <div class="fakeimg">
        <img src="../../static/img/1.jpg" class="img-responsive">
      </div>
      <br>
      <p>篮球（basketball），是奥运会核心比赛项目，是以手为中心的身体对抗性体育运动。由体育教师詹姆士·奈史密斯发明，于1896年传入中国。</p>
      <br><br><br><br><br><br><br><br><br>
      <h2>SSM</h2>
      <p>SSM（Spring+SpringMVC+MyBatis）框架集由Spring、MyBatis两个开源框架整合而成（SpringMVC是Spring中的部分内容）。常作为数据源较简单的web项目的框架。</p>
      <hr class="hidden-sm hidden-md hidden-lg">

    </div>
    <div class="col-sm-8">
      <h2>CUBA</h2>
      <div class="fakeimg"><img src="../../static/img/2.jpg" class="img-responsive"></div>
      <br>
      <p>“中国大学生篮球联赛”简称“CUBA” ，是由中国大学生体育协会主办，教育部唯一官方认可的中国大学生五人制篮球联赛。</p>
      <br>
      <h2>Kobe bryant</h2>
      <div class="fakeimg"><img src="../../static/img/3.jpg" class="img-responsive"></div>
      <br>
      <p>The 3rd highest score in NBA history The 2008 MVP, 2 times NBA finals MVP, 5 times NBA champion, A 6'6 guard from Lower Marrien high shool, No.24.</p>
    </div>
  </div>
</div>

<div class="jumbotron text-center" style="margin-bottom:0">

  <p><controller:hello /></p>
</div>
</body>
</html>
