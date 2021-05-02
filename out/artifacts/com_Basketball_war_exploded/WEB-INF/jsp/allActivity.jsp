<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>活动列表</title>

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
                    <small>活动列表————社团所发布的所有活动</small>
                </h1>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 column">
                <%--toAddMember--%>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/activity/toAddActivity">添加活动</a>&nbsp;
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/activity/allActivity">刷新列表</a>&nbsp;
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/member/toMain">返回首页</a>
            </div>
            <div class="col-md-8 column">
                <%--查询会员信息--%>
                <form class="form-inline" action="${pageContext.request.contextPath}/activity/queryActivity1" method="post" style="float: right">
                    <span style="color: red;font-weight: bold">${error}</span>
                    <input type="text" name="queryActivityId" class="form-control" placeholder="请输入要查询的活动编号">
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
                    <th>活动编号</th>
                    <th>新闻方案编号</th>
                    <th>物资方案编号</th>
                    <th>策划书编号</th>
                    <th>操作</th>
                </tr>
                </thead>

                <%--从数据库查询出会员信息，从list中遍历出来 ：foreach--%>
                <tbody>
                <c:forEach var="activity" items="${list}" varStatus="status">

                    <tr ${status.count%2==1? "style='background-color:papayawhip'" : "style='background-color:palegoldenrod'"}>
                        <td>${activity.activityId}</td>
                        <td>${activity.newId}</td>
                        <td>${activity.suppId}</td>
                        <td>${activity.planId}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/activity/toUpdate?id=${activity.activityId}">修改</a>
                            &nbsp; | &nbsp;
                            <a href="${pageContext.request.contextPath}/activity/deleteActivity?id=${activity.activityId}">删除</a>
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
