<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>干事列表</title>

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
                    <small>干事列表————社团全体工作人员</small>
                </h1>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 column">
                <%--toAddMember--%>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/staff/toAddStaff">添加干事</a>&nbsp;
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/staff/allStaff">刷新列表</a>&nbsp;
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/staff/toMain2">返回首页</a>
            </div>
            <div class="col-md-8 column">
                <%--查询会员信息--%>
                <form class="form-inline" action="${pageContext.request.contextPath}/staff/queryStaff1" method="post" style="float: right">
                    <span style="color: red;font-weight: bold">${error4}</span>
                    <input type="text" name="queryStaffName" class="form-control" placeholder="请输入要查询的干事名字">
                    <input type="submit" value="查询" class="btn btn-primary">
                </form>
            </div>
        </div>
    </div>


    <div class="row-clearfix">
        <div class="col-md-column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>干事编号</th>
                    <th>干事姓名</th>
                    <th>干事性别</th>
                    <th>干事年龄</th>
                    <th>登陆密码</th>
                    <th>操作</th>
                </tr>
                </thead>

                <%--从数据库查询出干事信息，从list中遍历出来 ：foreach--%>
                <tbody>
                <c:forEach var="staff" items="${list}" varStatus="status">
                    <tr ${status.count%2==1? "style='background-color:papayawhip'" : "style='background-color:palegoldenrod'"}>
                        <td>${staff.staffId}</td>
                        <td>${staff.staffName}</td>
                        <td>${staff.staffSex}</td>
                        <td>${staff.staffAge}</td>
                        <td>${staff.staffPwd}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/staff/toUpdate?id=${staff.staffId}">修改</a>
                            &nbsp; | &nbsp;
                            <a href="${pageContext.request.contextPath}/staff/deleteStaff?id=${staff.staffId}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

</div>
</body>
</html>
