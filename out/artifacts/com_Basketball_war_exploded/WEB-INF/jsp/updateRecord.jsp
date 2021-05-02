<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改活动记录</title>

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
                    <small>修改活动记录&nbsp;[&nbsp;${record.recordId}&nbsp;]&nbsp;的信息</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/record/updateRecord" method="post">


        <input type="hidden" name="RecordId" value="${record.recordId}">

        <div class="form-group">
            <label>参加会员编号：</label>
            <input type="text" name="MemberId" value="${record.memberId}" class="from-control" required>
        </div>

        <div class="form-group">
            <label>参加活动编号：</label>
            <input type="text" name="ActivityId" value="${record.activityId}" class="from-control" required>
        </div>

        <div class="form-group">
            <label>活动结果：</label>
            <input type="text" name="Win" value="${record.win}" class="from-control" required>
        </div>

        <div class="form-group">
            <label>活动分数：</label>
            <input type="text" name="Point" value="${record.point}" class="from-control" required>
        </div>
        <div class="form-group">
            <input type="submit" class="from-control" value="确认">
        </div>
    </form>

</div>

</body>
</html>
