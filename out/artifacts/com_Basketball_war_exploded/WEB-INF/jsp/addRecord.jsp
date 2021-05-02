<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加活动记录</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">

    <%--    清除浮动--%>
    <div class="row clearfix">
        <div class="col-md-12">
            <div class="page-header">
                <h1>
                    <small>添加活动记录</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/record/addRecord" method="post">
        <div class="form-group">
            <label>参加记录编号：</label>
            <input type="text" name="RecordId" class="from-control" required>
        </div>
        <div class="form-group">
            <label>参加人员编号：</label>
            <input type="text" name="MemberId" class="from-control" required>
        </div>

        <div class="form-group">
            <label>参加活动编号：</label>
            <input type="text" name="ActivityId" class="from-control" required>
        </div>

        <div class="form-group">
            <label>比赛结果：</label>
            <input type="text" name="Win" class="from-control" required>
        </div>

        <div class="form-group">
            <label>比赛分数：</label>
            <input type="text" name="Point" class="from-control" required>
        </div>
        <div class="form-group">
            <input type="submit" class="from-control" value="添加">
        </div>
    </form>

</div>

</body>
</html>
