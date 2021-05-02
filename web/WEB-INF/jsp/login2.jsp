<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>管理员登录</title>

    <style>
        body{
            background-image: url("../../static/img/bg2.jpg");
            background-size:cover;
        }
    </style>
</head>
<body>
<%--<%--%>
<%--    int name0 = Integer.parseInt(request.getParameter("sno"));--%>
<%--    String name1 = request.getParameter("passwords");--%>
<%--    Cookie cookies[] = request.getCookies();--%>
<%--    if (!(null == name0)) {--%>
<%--        Cookie c = new Cookie("sno", name0);--%>
<%--        c.setMaxAge(10); // Cookie 的有效期为 30 秒--%>
<%--        response.addCookie(c);--%>
<%--    } else if (cookies != null) {--%>
<%--        // 如果已经设置了cookie ， 则得到它的值，并保存到变量name0中--%>
<%--        for (int i = 0; i < cookies.length; i++) {--%>
<%--            if (cookies[i].getName().equals("sno"))--%>
<%--                name0 = cookies[i].getValue();--%>
<%--        }--%>
<%--    }--%>
<%--    if (name1 != null) {--%>
<%--        Cookie c = new Cookie("passwords", name1);--%>
<%--        c.setMaxAge(15); // Cookie 的有效期为 15 秒--%>
<%--        response.addCookie(c);--%>
<%--    } else if (cookies != null) {--%>
<%--        // 如果已经设置了cookie ， 则得到它的值，并保存到变量name1中--%>
<%--        for (int i = 0; i < cookies.length; i++) {--%>
<%--            if (cookies[i].getName().equals("passwords"))--%>
<%--                name1 = cookies[i].getValue();--%>
<%--        }--%>
<%--    }--%>
<%--%>--%>
<br>
<h2 align="center">
    <font color=red>篮球社 管理员登录页面</font>
</h2>
<h3 align="center">${message}</h3>
<form action="${pageContext.request.contextPath}/staff/login2" method="post">
    <table align="center" border="1">
        <tr>
            <td>干事编号:</td>
            <td><input type="text" name="sno2" placeholder="请输入ID"
                       value="${cookie.sno2.value}"></td>
        </tr>
        <tr>
            <td>密码:</td>
            <td><input type="password" name="passwords2" placeholder="请输入密码"
                       value="${cookie.passwords2.value}"></td>
        </tr>
        <tr>
            <td><input type="checkbox" name="isMemory" value="不记住密码" id="isMemory"/>自动登录</td>
        </tr>
        <tr>
            <td><input type="submit" value="登录" /></td>
            <td><input type="reset" value="重置" /></td>
        </tr>
    </table>
    <h2 align="center">
        <span style="color: red;font-weight: bold">${error3}</span>
        <font color=red><a href="${pageContext.request.contextPath}/staff/toRegistered">注册干事</a></font>
    </h2>
</form>
</body>
</html>