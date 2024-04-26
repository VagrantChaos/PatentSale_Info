<%@ page import="com.cc.domain.Sales" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2024/4/23
  Time: 21:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add</title>
    <link type="text/css" rel="stylesheet" href="../css/add.css">
    <link type="text/css" rel="stylesheet" href="../css/common.css">
    <script src="../js/add.js"></script>
</head>
<body>
<header style="background-color: #fff;position: fixed;left: 0;right: 0;top: 0;min-height: 60px;padding: 0 10px;border-bottom: 1px solid #f1f2f7">
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
    <div style="height: 45px"></div>
    <h1 style="text-align: center">新增</h1>
    <form name="dataForm" action="AddDataServlet" method="post" onsubmit="return validateForm()">
        <div class="form-group">
            <label>ID:</label>
            <input type="text" name="id" id="ID">
        </div>

        <div class="form-group">
            <label>Number:</label>
            <input type="text" name="number">
        </div>

        <div class="form-group">
            <label>Name:</label>
            <input type="text" name="name">
        </div>

        <div class="form-group date-group">
            <label>Complete Date:</label>
            <input type="date" name="startDate" placeholder="Start Date"style="width: 40%">到
            <input type="date" name="endDate" placeholder="End Date"style="width: 40%">
        </div>

        <div class="form-group">
            <label>Belonging Organization:</label>
            <input type="text" name="belOrganization">
        </div>

        <div class="form-group">
            <label>Contact Person:</label>
            <input type="text" name="contactPerson">
        </div>

        <div class="form-group">
            <label>Phone:</label>
            <input type="text" name="phone">
        </div>
        <div class="form-group">
            <label>Years:</label>
            <input type="text" name="years">
        </div>
        <div class="form-group">
            <label>RMB:</label>
            <input type="text" name="rmb" id="rmb" onchange="calculateDollar()">
        </div>
        <div class="form-group">
            <label>Dollar:</label>
            <input type="text" id="dollar" name="dollar" readonly style="background-color: #f1f2f7">
        </div>
        <div class="form-group">
            <label>Sale Date:</label>
            <input type="date" name="saleDate">
        </div>
        <div class="form-group">
            <label>Organization:</label>
            <input type="text" name="organization">
        </div>
        <div class="form-group">
            <label>Nation:</label>
            <input type="text" name="nation">
        </div>
        <div class="form-group">
            <label>Delegate:</label>
            <input type="text" name="delegate">
        </div>
        <div class="form-group">
            <label>Contact Man:</label>
            <input type="text" name="contactMan">
        </div>
        <div class="form-group">
            <label>Inspect Organization:</label>
            <input type="text" name="inSpectOrg">
        </div>
        <div class="form-group">
            <label>Inspector:</label>
            <input type="text" name="inspector">
        </div>
        <div class="form-group">
            <label>Date Inspect:</label>
            <input type="date" name="dateInspect">
        </div>
        <div class="form-group">
            <label>Conclusion:</label>
            允许<input type="checkbox" name="conclusion" style="transform: scale(1.5);margin-left: 50px">
        </div>
        <input type="submit" value="Add" style="width: 60%;margin-left: 25%;margin-top: 30px">
    </form>

</main>
</body>
</html>
