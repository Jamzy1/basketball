<%--
  Created by IntelliJ IDEA.
  User: Jamzy
  Date: 2020/8/23
  Time: 17:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>上传活动信息</title>
</head>
<body>

<form action="${pageContext.request.contextPath}/file/upload" enctype="multipart/form-data" method="post">
    <input type="file" name="file"/>
    <input type="submit" value="upload"/>
</form>



</body>
</html>
