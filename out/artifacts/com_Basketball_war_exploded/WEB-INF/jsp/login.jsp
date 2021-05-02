<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>会员登录</title>

    <style>
        body{
            background-image: url("../../static/img/bg2.jpg");
            background-size:cover;
        }
    </style>
</head>
<body>
<br>
<h2 align="center">
    <font color=red>篮球社 会员登录页面</font>
</h2>
<h3 align="center">${message}</h3>
<form action="${pageContext.request.contextPath}/member/login" method="post">
    <table align="center" border="1">
        <tr>
            <td>会员编号:</td>
            <td><input type="text" name="sno" placeholder="请输入ID"
                      value="${cookie.sno.value}"></td>
        </tr>
        <tr>
            <td>密码:</td>
            <td><input type="password" name="passwords" placeholder="请输入密码"
                       value="${cookie.passwords.value}"></td>
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
        <span style="color: red;font-weight: bold">${error2}</span>
        <font color=red><a href="${pageContext.request.contextPath}/member/toRegistered">注册用户</a></font>
    </h2>
</form>
</body>
</html>