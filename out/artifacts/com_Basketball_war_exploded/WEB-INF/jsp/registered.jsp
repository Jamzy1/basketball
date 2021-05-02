<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>注册会员</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="${pageContext.request.contextPath}/static/js/jquery3.5.1.js"></script>


    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script>

        function a1() {
            $.post({
                url:"${pageContext.request.contextPath}/member/b1",

                data:{'MemberId':$("#MemberId").val()},
                // dataType:"json",


                success:function (data) {
                    if (data.toString()==="该会员号可以被使用"){
                        $("#userInfo").css("color","green");
                    }else {
                        $("#userInfo").css("color","red");
                    }
                    $("#userInfo").html(data);
                 }

            });
        }
    </script>
</head>
<body>

<div class="container">

    <%--    清除浮动--%>
    <div class="row clearfix">
        <div class="col-md-12">
            <div class="page-header">
                <h1>
                    <small>请输入你的信息</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/member/registered1" method="post">
        <div class="form-group">
            <label>会员编号：</label>
            <input type="text" id="MemberId" name="MemberId" class="from-control" onblur="a1()" required>
            <span id="userInfo"></span>
        </div>

        <div class="form-group">
            <label>会员姓名：</label>
            <input type="text" name="MemberName" class="from-control" required>
        </div>

        <div class="form-group">
            <label>会员性别：</label>
            <input type="text" name="MemberSex" class="from-control" required>
        </div>

        <div class="form-group">
            <label>会员年龄：</label>
            <input type="text" name="MemberAge" class="from-control" required>
        </div>

        <div class="form-group">
            <label>会员密码：</label>
            <input type="text" name="MemberPwd" class="from-control" required>
        </div>
        <div class="form-group">
            <input type="submit" class="from-control" value="注册">
        </div>
    </form>

</div>

</body>
</html>
