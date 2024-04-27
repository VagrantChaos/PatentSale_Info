<%@ page import="com.cc.domain.Sales" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%--
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
<%
    Sales sales = null;
    String startDate = null;
    String endDate = null;
    String dateI = null;
    String dateS = null;
    try {
        sales = (Sales) request.getSession().getAttribute("adding");
        System.out.println(sales);
        startDate =sales.getCDate().split("-")[0].replaceAll("[年月]", "-").replace("日","");
        endDate = sales.getCDate().split("-")[1].replaceAll("[年月]", "-").replace("日","");

        SimpleDateFormat outFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateI= outFormat.format(sales.getDateInspect());
        dateS = outFormat.format(sales.getSaleDate());
    }catch (Exception e){
        System.out.println("no history");
    }
%>
<main id="main" style="margin-left: 180px;">
    <div style="height: 45px"></div>
    <h1 style="text-align: center">新增</h1>
    <form name="dataForm" id="dataForm" action="/Wed/add" onsubmit="return confirmSubmit()" method="post">
        <div class="form-group">
            <label>ID:</label>
            <input type="text" name="id" id="ID" value="<%=sales!=null?sales.getId():""%>"
                   required pattern="[0-9]+"
                   oninvalid="this.setCustomValidity('id只能是数字')"
                   oninput="this.setCustomValidity('')">
        </div>

        <div class="form-group">
            <label>Number:</label>
            <input type="text" name="number" value="<%=sales!=null?sales.getNumber():""%>"
                   required pattern="^(?:[A-Z]{2}\s?)?\d+(?:\.\d+)?(?:\s?[A-Z])?$"
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请输入有效专利证号')">
        </div>

        <div class="form-group">
            <label>Name:</label>
            <input type="text" name="name" value="<%=sales!=null?sales.getName():""%>"
                   required 
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请填写专利名称')">
        </div>

        <div class="form-group date-group">
            <label>Complete Date:</label>
            <input type="date" name="startDate" placeholder="Start Date" id="startDate"
                   style="width: 40%" required value="<%=sales!=null?startDate:""%>"
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请填写开始日期')">到
            <input type="date" name="endDate" placeholder="End Date" style="width: 40%" required value="<%=sales!=null?endDate:""%>"
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请填写完成时间')">
        </div>

        <div class="form-group">
            <label>Belonging Organization:</label>
            <input type="text" name="belOrganization" value="<%=sales!=null?sales.getBelOrganization():""%>"
                   required
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('必须填写所属单位')">
        </div>

        <div class="form-group">
            <label>Contact Person:</label>
            <input type="text" name="contactPerson" value="<%=sales!=null?sales.getContactPerson():""%>"
                   required
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请填写转让方联系人')">
        </div>

        <div class="form-group">
            <label>Phone:</label>
            <input type="text" name="phone"value="<%=sales!=null?sales.getPhone():""%>"
                   maxlength="11"
                   required pattern="^\d{11}$"
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请正确填写手机号')"
            >
        </div>
        <div class="form-group">
            <label>Years:</label>
            <input type="text" name="years"value="<%=sales!=null?sales.getYears():""%>"
                   required pattern="1?[1-9]|20"
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('有效年限在1-20')">
        </div>
        <div class="form-group">
            <label>RMB:</label>
            <input type="text" name="rmb" id="rmb" onchange="calculateDollar()"
                   value="<%=sales!=null?sales.getRmb():""%>"
                   required pattern="\d+(\.\d{1,2})?"
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请输入正确的金额')">
        </div>
        <div class="form-group">
            <label>Dollar:</label>
            <input type="text" id="dollar" name="dollar" readonly style="background-color: #f1f2f7" value="<%=sales!=null?sales.getDollar():""%>">
        </div>
        <div class="form-group">
            <label>Sale Date:</label>
            <input type="date" name="saleDate" value="<%=sales!=null?dateS:""%>"
                   required
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请输入登记日期')">
        </div>
        <div class="form-group">
            <label>Organization:</label>
            <input type="text" name="organization" value="<%=sales!=null?sales.getOrganization():""%>"
                   required
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请输入受售单位')">
        </div>
        <div class="form-group">
            <label>Nation:</label>
            <input type="text" name="nation" value="<%=sales!=null?sales.getNation():""%>"
                   required
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请输入受售单位国别')">
        </div>
        <div class="form-group">
            <label>Delegate:</label>
            <input type="text" name="delegate" value="<%=sales!=null?sales.getDelegate():""%>"
                   required
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请输入法定代表人')">
        </div>
        <div class="form-group">
            <label>Contact Man:</label>
            <input type="text" name="contactMan" value="<%=sales!=null?sales.getContactMan():""%>"
                   required
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请输入受售方联系人')">
        </div>
        <div class="form-group">
            <label>Inspect Organization:</label>
            <input type="text" name="inSpectOrg" value="<%=sales!=null?sales.getInSpectOrg():""%>"
                   required
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请输入审查机构')">
        </div>
        <div class="form-group">
            <label>Inspector:</label>
            <input type="text" name="inspector" value="<%=sales!=null?sales.getInspector():""%>"
                   required
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请输入审查人')">
        </div>
        <div class="form-group">
            <label>Date Inspect:</label>
            <input type="date" name="dateInspect" value="<%=sales!=null?dateI:""%>"
                   required
                   oninput="this.setCustomValidity('')"
                   oninvalid="this.setCustomValidity('请输入审查日期')">
        </div>
        <div class="form-group">
            <label>Conclusion:</label>
            允许<input type="checkbox" name="conclusion" style="transform: scale(1.5);margin-left: 50px" id="conclusion">
        </div>
        <input type="submit" value="Add" style="width: 60%;margin-left: 25%;margin-top: 30px"  onsubmit="return confirmSubmit()">
    </form>

</main>
<script>
    var checkbox = document.getElementById("conclusion");
    checkbox.checked =<%=sales!=null?sales.isConclusion():""%>;
</script>
</body>
</html>
