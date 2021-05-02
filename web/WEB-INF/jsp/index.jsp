<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>广工篮球社</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>


    <style>
        body{
            background-image: url("../../static/img/bg1.jpg");
            background-size:cover;
        }
        p.sansserif{font-family:Arial,Helvetica,sans-serif;}
    </style>
</head>
<body>

<div class="container" align="center">
    <h2 class="sansserif">请选择您的登陆身份</h2>
    <br><br><br><br>
    <a href="${pageContext.request.contextPath}/member/toLogin"><button type="button" class="btn btn-info btn-lg">会员登陆</button></a>
</div>
<br>
<div class="container" align="center">
    <a href="${pageContext.request.contextPath}/staff/toLogin2"><button type="button" class="btn btn-info btn-lg">管理员登陆</button></a>
</div>

</body>
</html>
