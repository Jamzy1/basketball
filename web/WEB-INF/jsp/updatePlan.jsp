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
                    <small>修改活动&nbsp;[&nbsp;${plan.planId}&nbsp;]&nbsp;的信息</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/plan/updatePlan" method="post">


        <input type="hidden" name="PlanId" value="${plan.planId}">

        <div class="form-group">
            <label>活动名称：</label>
            <input type="text" name="PlanName" value="${plan.planName}" class="from-control" required>
        </div>

        <div class="form-group">
            <label>活动时间：</label>
            <input type="text" name="PlanTime" value="${plan.planTime}" class="from-control" required>
        </div>

        <div class="form-group">
            <label>活动地点：</label>
            <input type="text" name="PlanPlace" value="${plan.planPlace}" class="from-control" required>
        </div>

        <div class="form-group">
            <label>活动人数：</label>
            <input type="text" name="PlanNumber" value="${plan.planNumber}" class="from-control" required>
        </div>

        <div class="form-group">
            <label>活动时长：</label>
            <input type="text" name="PlanDuration" value="${plan.planDuration}" class="from-control" required>
        </div>

        <div class="form-group">
            <input type="submit" class="from-control" value="确认">
        </div>
    </form>

</div>

</body>
</html>
