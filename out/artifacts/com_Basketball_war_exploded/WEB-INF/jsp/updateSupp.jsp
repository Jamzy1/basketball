<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改物资信息</title>

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
                    <small>修改物资&nbsp;[&nbsp;${supp.suppId}&nbsp;]&nbsp;的信息</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/supp/updateSupp" method="post">


        <input type="hidden" name="SuppId" value="${supp.suppId}">

        <div class="form-group">
            <label>负责干事编号：</label>
            <input type="text" name="StaffId" value="${supp.staffId}" class="from-control" required>
        </div>

        <div class="form-group">
            <label>物资数量：</label>
            <input type="text" name="SuppNumber" value="${supp.suppNumber}" class="from-control" required>
        </div>

        <div class="form-group">
            <label>物资种类：</label>
            <input type="text" name="SuppKind" value="${supp.suppKind}" class="from-control" required>
        </div>

        <div class="form-group">
            <input type="submit" class="from-control" value="确认">
        </div>
    </form>

</div>

</body>
</html>
