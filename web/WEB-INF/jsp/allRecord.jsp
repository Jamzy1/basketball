<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>会员列表</title>

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
                    <small>活动记录列表————社团举办活动记录</small>
                </h1>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 column">
                <%--toAddMember--%>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/record/toAddRecord">添加活动记录</a>&nbsp;
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/record/allRecord">刷新列表</a>&nbsp;
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/member/toMain">返回首页</a>
            </div>
            <div class="col-md-8 column">
                <%--查询会员信息--%>
                <form class="form-inline" action="${pageContext.request.contextPath}/record/queryRecord1" method="post" style="float: right">
                    <span style="color: red;font-weight: bold">${error}</span>
                    <input type="text" name="queryRecordId" class="form-control" placeholder="请输入要查询的记录编号">
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
                    <th>记录编号</th>
                    <th>参加会员编号</th>
                    <th>参加活动编号</th>
                    <th>活动结果</th>
                    <th>活动分数</th>
                    <th>操作</th>
                </tr>
                </thead>

                <%--从数据库查询出会员信息，从list中遍历出来 ：foreach--%>
                <tbody>
                <c:forEach var="record" items="${list}" varStatus="status">

                    <tr ${status.count%2==1? "style='background-color:papayawhip'" : "style='background-color:palegoldenrod'"}>
                        <td>${record.recordId}</td>
                        <td>${record.memberId}</td>
                        <td>${record.activityId}</td>
                        <td>${record.win}</td>
                        <td>${record.point}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/record/toUpdate?id=${record.recordId}">修改</a>
                            &nbsp; | &nbsp;
                            <a href="${pageContext.request.contextPath}/record/deleteRecord?id=${record.recordId}">删除</a>
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
