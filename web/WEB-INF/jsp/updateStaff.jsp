<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改干事信息</title>

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
                    <small>修改干事&nbsp;[&nbsp;${staff.staffId}&nbsp;]&nbsp;的信息</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/staff/updateStaff" method="post">

        <input type="hidden" name="StaffId" value="${staff.staffId}">

        <div class="form-group">
            <label>会员姓名：</label>
            <input type="text" name="StaffName" value="${staff.staffName}" class="from-control" required>
        </div>

        <div class="form-group">
            <label>会员性别：</label>
            <input type="text" name="StaffSex" value="${staff.staffSex}" class="from-control" required>
        </div>

        <div class="form-group">
            <label>会员年龄：</label>
            <input type="text" name="StaffAge" value="${staff.staffAge}" class="from-control" required>
        </div>

        <div class="form-group">
            <label>会员密码：</label>
            <input type="text" name="StaffPwd" value="${staff.staffPwd}" class="from-control" required>
        </div>
        <div class="form-group">
            <input type="submit" class="from-control" value="确认">
        </div>
    </form>

</div>

</body>
</html>
