<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2024/4/23
  Time: 17:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index</title>
    <style>
        li {
            padding: 30px 3px;
        }
        a {
            text-decoration: none;
            color: inherit;
        }
    </style>
</head>
<body>
    <jsp:include page="common.jsp"></jsp:include>
    <main id="main" style="margin-left: 180px;">
        <div style="height: 65px"></div>
        <div style="text-align: center">
            <img src="../img/background.jpeg" alt="background" width="50%">
        </div>
        <section style="text-align: center">
            <h1>声明</h1>
            <div>
                <p>本项目为2024年4月信息系统课程设计预提交版，呈现了一个具有curd基本功能的专利转让登记表</p>
                <div style="text-align: right">
                    <p>——合肥工业大学</p>
                    <p>22级信息管理与信息系统1班</p>
                    <p>2022211057</p>
                </div>
            </div>
        </section>
        <footer style="height: 10px; background-color: #333;color: #fff;padding: 20px 0;text-align: center;position: fixed;bottom: 0;width: 100%;">
            <p style="max-width: 1200px;margin: 0 auto;padding: 0 20px;font-size: x-small">最终解释权归本人所有————email:2022211057@mail.hfut.edu.cn</p>
        </footer>
    </main>
</body>
</html>
