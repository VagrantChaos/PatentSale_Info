<%@ page import="com.cc.domain.Sales" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2024/4/23
  Time: 21:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link type="text/css" rel="stylesheet" href="../css/common.css">
    <script>
        window.onload = function() {
            document.getElementById("in").focus();
        };
    </script>
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
    <div style="padding-top: 65px;"></div>
    <form action="/Wed/searchData?type=byName"
          name="formid" id="formid" method="post">
        <h1 style="text-align: center">
            图书查询
        </h1>
        <table style="MARGIN-RIGHT: auto; MARGIN-LEFT: auto; width: 650px; font-size: 22px;">

            <tr>
                <td>图书名称：</td>
                <td>
                    <input type="text"
                           id="in"
                           name="toSearchName"
                           style="width: 450px; height: 30px; font-size: 22px;" />
                </td>
                <td><input type="submit" style="width:70px;height:30px ; font-size:20px;" value="查询"  /></td>
            </tr>
        </table>
        <br>
        <br>
        <hr>
    </form>
    <table id="datas" style="border-collapse: collapse;text-align: center;font-size: 16px;line-height: 26px;border: 2px solid #6e6e6e;">
        <tr>
            <th>编号</th>
            <th>证号</th>
            <th>名称</th>
            <th>完成时间</th>
            <th>所属单位</th>
            <th>转让方联系人</th>
            <th>联系电话</th>
            <th>出售金额(￥)</th>
            <th>出售金额($)</th>
            <th>有效年限</th>
            <th>登记日期</th>
            <th>受售单位</th>
            <th>受售单位国别</th>
            <th>法定代表人</th>
            <th>受售方联系人</th>
            <th>审查机构</th>
            <th>审查结论</th>
            <th>审查人</th>
            <th>审查日期</th>
            <th>简介</th>
            <th>修改</th>
            <th>删除</th>
        </tr>
        <%
            ArrayList<Sales> result = new ArrayList<>();
            try {
                result= (ArrayList<Sales>) request.getSession().getAttribute("result");

                for(Sales sales:result) {
        %>
        <tr>
            <td><%=sales.getId() %></td>
            <td><%=sales.getNumber() %></td>
            <td><%=sales.getName() %></td>
            <td><%=sales.getCDate() %></td>
            <td><%=sales.getBelOrganization()%></td>
            <td><%=sales.getContactPerson()%></td>
            <td><%=sales.getPhone()%></td>
            <td><%=sales.getRmb()%></td>
            <td><%=sales.getDollar()%></td>
            <td><%=sales.getYears()%></td>
            <td><%=sales.getSaleDate().toString()%></td>
            <td><%=sales.getOrganization()%></td>
            <td><%=sales.getNation()%></td>
            <td><%=sales.getDelegate()%></td>
            <td><%=sales.getContactMan()%></td>
            <td><%=sales.getInSpectOrg()%></td>
            <td><%=sales.isConclusion()?"允许":"不允许"%></td>
            <td><%=sales.getInspector()%></td>
            <td><%=sales.getDateInspect().toString()%></td>

            <td><a href="">详情</a></td>
            <td><a href="">修改</a></td>
            <td><a href="">删除</a></td>
        </tr>
        <% }}catch (Exception e){
//                result = new ArrayList<>();
        }%>
    </table>
</main>
</body>
</html>
