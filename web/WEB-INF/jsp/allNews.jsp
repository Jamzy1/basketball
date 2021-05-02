<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新闻稿列表</title>

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
                    <small>新闻稿列表————新闻部发布的所有新闻稿</small>
                </h1>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 column">
                <%--toAddMember--%>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/news/toAddNews">添加新闻搞</a>&nbsp;
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/news/allNews">刷新列表</a>&nbsp;
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/member/toMain">返回首页</a>
            </div>
            <div class="col-md-8 column">
                <%--查询信息--%>
                <form class="form-inline" action="${pageContext.request.contextPath}/news/queryNew1" method="post" style="float: right">
                    <span style="color: red;font-weight: bold">${error}</span>
                    <input type="text" name="queryNewId" class="form-control" placeholder="请输入要查询的新闻稿ID">
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
                    <th>新闻稿编号</th>
                    <th>负责干事编号</th>
                    <th>宣传方式</th>
                    <th>宣传范围</th>
                    <th>操作</th>
                </tr>
                </thead>

                <%--从数据库查询出会员信息，从list中遍历出来 ：foreach--%>
                <tbody>
                <c:forEach var="news" items="${list}" varStatus="status">

                    <tr ${status.count%2==1? "style='background-color:papayawhip'" : "style='background-color:palegoldenrod'"}>
                        <td>${news.newId}</td>
                        <td>${news.staffId}</td>
                        <td>${news.newWay}</td>
                        <td>${news.newLimit}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/news/toUpdate?id=${news.newId}">修改</a>
                            &nbsp; | &nbsp;
                            <a href="${pageContext.request.contextPath}/news/deleteNew?id=${news.newId}">删除</a>
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
