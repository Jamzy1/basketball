<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改新闻稿信息</title>

    <%--BootStrap美化界面--%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">

    <%--    清除浮动--%>
    <div class="row clearfix">
        <div class="col-md-12">
            <div class="page-header">
                <h1>
                    <small>修改新闻稿&nbsp;[&nbsp;${news.newId}&nbsp;]&nbsp;的信息</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/news/updateNews" method="post">

        <input type="hidden" name="NewId" value="${news.newId}">

        <div class="form-group">
            <label>负责员工ID：</label>
            <input type="text" name="StaffId" value="${news.staffId}" class="from-control" required>
        </div>

        <div class="form-group">
            <label>宣传方式：</label>
            <input type="text" name="NewWay" value="${news.newWay}" class="from-control" required>
        </div>

        <div class="form-group">
            <label>宣传范围：</label>
            <input type="text" name="NewLimit" value="${news.newLimit}" class="from-control" required>
        </div>

        <div class="form-group">
            <input type="submit" class="from-control" value="确认">
        </div>
    </form>

</div>

</body>
</html>
