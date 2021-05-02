<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改会员信息</title>

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
                    <small>修改会员&nbsp;[&nbsp;${member.memberId}&nbsp;]&nbsp;的信息</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/member/updateMember" method="post">

        <%--<div class="form-group">
            <label>会员编号：</label>
            <input type="text" name="MemberId" value="${member.memberId}" class="from-control" required>
        </div>--%>

        <input type="hidden" name="MemberId" value="${member.mem
        <div class="form-group">berId}">

            <label>会员姓名：</label>
            <input type="text" name="MemberName" value="${member.memberName}" class="from-control" required>
        </div>

        <div class="form-group">
            <label>会员性别：</label>
            <input type="text" name="MemberSex" value="${member.memberSex}" class="from-control" required>
        </div>

        <div class="form-group">
            <label>会员年龄：</label>
            <input type="text" name="MemberAge" value="${member.memberAge}" class="from-control" required>
        </div>

        <div class="form-group">
            <label>会员密码：</label>
            <input type="text" name="MemberPwd" value="${member.memberPwd}" class="from-control" required>
        </div>
        <div class="form-group">
            <input type="submit" class="from-control" value="确认">
        </div>
    </form>

</div>

</body>
</html>
