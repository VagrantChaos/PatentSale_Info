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
    <header style="background-color: #fff;position: fixed;top: 0;left: 0;right: 0;min-height: 60px;padding: 0 10px;border-bottom: 1px solid #f1f2f7">
        <div>
            <input type="button" value="=" style="padding-left: 20px;border: white;background-color: white;min-height: 60px;min-width: 60px;font-size: xx-large" onclick="if('none'==(document.getElementById('sidebar').style.display)){document.getElementById('sidebar').style.display='block';document.getElementById('main').style.marginLeft='180px'}else {document.getElementById('sidebar').style.display='none';document.getElementById('main').style.marginLeft='0px'}">
            <a href="index.jsp" style="margin-left: 80px;">Home</a>
            <a href="/Wed/logout" style="position: absolute;right: 30px;top: 20px">Logout</a>
        </div>

    </header>
    <aside id="sidebar" style="display: block;background-color: #fff;width: 180px;height: 100%;position: fixed;left: 0;right: 180px;top: 75px;border-right: 1px solid #f1f2f7;">
        <div style="overflow: hidden; outline: none;" tabindex="5000">
            <ul>
                <li>
                    <a href="/Wed/searchData?type=all">All sales</a>
                    <span>></span>
                </li>
                <li>
                    <a href="searchByID.jsp"><span>SearchByID</span></a>
                    <span>></span>
                </li>
                <li>
                    <a href="searchByName.jsp"><span>SearchByName</span></a>
                    <span>></span>
                </li>
                <li>
                    <a href="add.jsp"><span>Add</span></a>
                    <span>></span>
                </li>
            </ul>
        </div>
    </aside>
    <main id="main" style="margin-left: 180px;">
        <div style="height: 65px"></div>
        <div style="text-align: center">
            <img src="../img/background.jpeg" alt="background" width="50%">
        </div>
        <section style="text-align: center">
            <h1>声明</h1>
            <div>
                <p>本项目为2024年4月信息系统课程设计提交版，呈现了一个具有curd基本功能的专利转让登记表</p>
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
