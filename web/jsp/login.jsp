<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2024/4/17
  Time: 17:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="../css/login.css" rel="stylesheet"/>
</head>
<body>
<%--登录界面的背景图--%>
<%--<script>--%>
<%--    $.backstretch("img/login-bg.jpg", {speed: 500});--%>
<%--</script>--%>
    <form action="http://localhost:8080/Wed/login" method="post">
        <input name="usr" type="text"><br>
        <input name="psd" type="password"><br>
        <input value="login" type="submit"><br>
    </form>

</body>
</html>
