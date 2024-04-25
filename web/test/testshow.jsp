<%@ page import="com.cc.domain.Sales" %>
<%@ page import="java.util.ArrayList" %>

<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2024/4/23
  Time: 11:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>show</title>
</head>
<body>
<header style="background-color: #fff;position: fixed;left: 0;right: 0;min-height: 60px;padding: 0 10px;border-bottom: 1px solid #f1f2f7">
    <div>
        <input type="button" value="=" style="padding-left: 20px;border: white;background-color: white;min-height: 60px;min-width: 60px;font-size: xx-large" onclick="if('none'==(document.getElementById('sidebar').style.display)){document.getElementById('sidebar').style.display='block';document.getElementById('sales').style.marginLeft='180px'}else {document.getElementById('sidebar').style.display='none';document.getElementById('sales').style.marginLeft='0px'}">
    </div>
</header>
<aside id="sidebar" style="display: block;background-color: #fff;width: 180px;height: 100%;position: fixed;left: 0;right: 180px;top: 75px;border-right: 1px solid #f1f2f7;">
    <div style="overflow: hidden; outline: none;" tabindex="5000">
        <ul>
            <li>
                <a href="" class="">
                    <i class="icon-th"></i>
                    <span>All sales</span>
                </a>
                <span>></span>
            </li>
        </ul>
    </div>
</aside>



    <main id="sales" style="margin-left: 180px;">
        <table style="padding-top: 60px">
            <tr>
                <th>编号</th>
                <th>书名</th>
                <th>类别</th>
                <th>出版时间</th>
                <th>作者</th>
                <th>价格</th>
                <th>促销价</th>
                <th>库存</th>
                <th>简介</th>
                <th>修改</th>
                <th>删除</th>
            </tr>
            <%
                ArrayList<Sales> result= (ArrayList<Sales>) request.getSession().getAttribute("result");
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
                <td><%=sales.isConclusion()%></td>
                <td><%=sales.getInspector()%></td>
                <td><%=sales.getDateInspect().toString()%></td>

                <td><a href="">详情</a></td>
                <td><a href="">修改</a></td>
                <td><a href="">删除</a></td>
            </tr>
            <% } %>
        </table>


    </main>

</body>
</html>
