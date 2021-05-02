<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加活动</title>

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
                    <small>添加活动</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/plan/addPlan" method="post">
        <div class="form-group">
            <label>活动编号：</label>
            <input type="text" name="PlanId" class="from-control" required>
        </div>
        <div class="form-group">
            <label>活动名称：</label>
            <input type="text" name="PlanName" class="from-control" required>
        </div>

        <div class="form-group">
            <label>活动时间：</label>
            <input type="text" name="PlanTime" class="from-control" required>
        </div>

        <div class="form-group">
            <label>活动地点：</label>
            <input type="text" name="PlanPlace" class="from-control" required>
        </div>

        <div class="form-group">
            <label>活动人数：</label>
            <input type="text" name="PlanNumber" class="from-control" required>
        </div>

        <div class="form-group">
            <label>活动时长：</label>
            <input type="text" name="PlanDuration" class="from-control" required>
        </div>

        <div class="form-group">
            <input type="submit" class="from-control" value="添加">
        </div>
    </form>

</div>

</body>
</html>
