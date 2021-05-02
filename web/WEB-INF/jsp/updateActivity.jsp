<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改活动信息</title>

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
                    <small>修改活动&nbsp;[&nbsp;${activity.activityId}&nbsp;]&nbsp;的信息</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/activity/updateActivity" method="post">



        <input type="hidden" name="ActivityId" value="${activity.activityId}">

        <div class="form-group">
            <label>新闻稿编号：</label>
            <input type="text" name="newId" value="${activity.newId}" class="from-control" required>
        </div>

        <div class="form-group">
            <label>物资编号：</label>
            <input type="text" name="suppId" value="${activity.suppId}" class="from-control" required>
        </div>

        <div class="form-group">
            <label>策划编号：</label>
            <input type="text" name="PlanId" value="${activity.planId}" class="from-control" required>
        </div>

        <div class="form-group">
            <input type="submit" class="from-control" value="确认">
        </div>
    </form>

</div>

</body>
</html>
