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
    <title>login</title>
    <style>
        body {
            background-image: url("img/loginback.jpeg");
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center;
        }
    </style>
</head>
<body>
<main style="background-color: rgba(255,255,255,0.8);border-radius: 8px">
    <form action="http://localhost:8080/Wed/login" method="post" style="width:320px;margin: 0 auto;padding: 20% 20%">
        <div>
            <h1>Sign in to the IS</h1>
            <label>username:</label><input name="usr" type="text" style="height: 30px;margin: 10px"><br>
            <label>password:</label><input name="psd" type="password" style="height: 30px;margin: 10px"><br>
            <label>验证码:</label><input name="checkCode" type="text" style="height: 30px;margin: 10px">
            <img src="/Wed/checkServlet"> <br>
            <input value="login" type="submit" style="height: 30px;margin: 10px;width: 300px"><br>
        </div>
    </form>
</main>


</body>
</html>
