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
<jsp:include page="common.jsp"></jsp:include>
<main id="main" style="margin-left: 180px;">
    <div style="height: 45px"></div>
    <h1 style="text-align: center">新增</h1>
    <form name="dataForm" id="dataForm" action="/Wed/add" method="post" onsubmit="return validateForm()">
        <div class="form-group">
            <label>ID:</label>
            <input type="text" name="id" id="ID"
                   required pattern="[0-9]+"
                   oninvalid="this.setCustomValidity('id只能是数字')"
                   oninput="this.setCustomValidity('')">
        </div>

        <div class="form-group">
            <label>Number:</label>
            <input type="text" name="number"
                   required pattern="^(?:[A-Z]{2}\s?)?\d+(?:\.\d+)?(?:\s?[A-Z])?$"
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请输入有效专利证号')">
        </div>

        <div class="form-group">
            <label>Name:</label>
            <input type="text" name="name"
                   required 
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请填写专利名称')">
        </div>

        <div class="form-group date-group">
            <label>Complete Date:</label>
            <input type="date" name="startDate" placeholder="Start Date"style="width: 40%"required
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请填写开始日期')">到
            <input type="date" name="endDate" placeholder="End Date"style="width: 40%"required
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请填写完成时间')">
        </div>

        <div class="form-group">
            <label>Belonging Organization:</label>
            <input type="text" name="belOrganization"
                   required
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('必须填写所属单位')">
        </div>

        <div class="form-group">
            <label>Contact Person:</label>
            <input type="text" name="contactPerson"
                   required
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请填写转让方联系人')">
        </div>

        <div class="form-group">
            <label>Phone:</label>
            <input type="text" name="phone"
                   maxlength="11"
                   required pattern="^\d{11}$"
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请正确填写手机号')"
            >
        </div>
        <div class="form-group">
            <label>Years:</label>
            <input type="text" name="years"
                   required pattern="1?[1-9]|20"
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('有效年限在1-20')">
        </div>
        <div class="form-group">
            <label>RMB:</label>
            <input type="text" name="rmb" id="rmb" onchange="calculateDollar()"
                   required pattern="\d+(\.\d{1,2})?"
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请输入正确的金额')">
        </div>
        <div class="form-group">
            <label>Dollar:</label>
            <input type="text" id="dollar" name="dollar" readonly style="background-color: #f1f2f7">
        </div>
        <div class="form-group">
            <label>Sale Date:</label>
            <input type="date" name="saleDate"
                   required
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请输入登记日期')">
        </div>
        <div class="form-group">
            <label>Organization:</label>
            <input type="text" name="organization"
                   required
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请输入受售单位')">
        </div>
        <div class="form-group">
            <label>Nation:</label>
            <input type="text" name="nation"
                   required
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请输入受售单位国别')">
        </div>
        <div class="form-group">
            <label>Delegate:</label>
            <input type="text" name="delegate"
                   required
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请输入法定代表人')">
        </div>
        <div class="form-group">
            <label>Contact Man:</label>
            <input type="text" name="contactMan"
                   required
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请输入受售方联系人')">
        </div>
        <div class="form-group">
            <label>Inspect Organization:</label>
            <input type="text" name="inSpectOrg"
                   required
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请输入审查机构')">
        </div>
        <div class="form-group">
            <label>Inspector:</label>
            <input type="text" name="inspector"
                   required
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请输入审查人')">
        </div>
        <div class="form-group">
            <label>Date Inspect:</label>
            <input type="date" name="dateInspect"
                   required
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请输入审查日期')">
        </div>
        <div class="form-group">
            <label>Conclusion:</label>
            允许<input type="checkbox" name="conclusion" style="transform: scale(1.5);margin-left: 50px">
        </div>
        <input type="submit" value="Add" style="width: 60%;margin-left: 25%;margin-top: 30px" >
    </form>

</main>
</body>
</html>
