<%@ page import="com.cc.domain.Sales" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2024/4/23
  Time: 2:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>PatentSaleInfo</title>
    <link type="text/css" rel="stylesheet" href="../css/common.css">
    <script src="../js/detail.js" type="text/javascript"></script>
</head>
<body>
<section>
    <jsp:include page="common.jsp"></jsp:include>
    <main id="main" style="margin-left: 180px;">
        <div style="height: 65px"></div>
        <table id="datas" style="MARGIN-RIGHT: auto; MARGIN-LEFT: auto;border-collapse: collapse;text-align: center;font-size: 16px;line-height: 26px;border: 2px solid #6e6e6e;">
            <tr>
                <th>编号</th>
                <th>证号</th>
                <th>名称</th>
                <th>完成时间</th>
<%--                <th>所属单位</th>--%>
<%--                <th>转让方联系人</th>--%>
<%--                <th>联系电话</th>--%>
<%--                <th>出售金额(￥)</th>--%>
<%--                <th>出售金额($)</th>--%>
<%--                <th>有效年限</th>--%>
<%--                <th>登记日期</th>--%>
<%--                <th>受售单位</th>--%>
<%--                <th>受售单位国别</th>--%>
<%--                <th>法定代表人</th>--%>
<%--                <th>受售方联系人</th>--%>
<%--                <th>审查机构</th>--%>
                <th>审查结论</th>
                <th>审查人</th>
                <th>审查日期</th>
                <th>简介</th>
                <th>修改</th>
                <th>删除</th>
            </tr>
            <%
                ArrayList<Sales> result= (ArrayList<Sales>) request.getSession().getAttribute("allresult");

                for(Sales sales:result) {
            %>
            <tr>
                <td><%=sales.getId() %></td>
                <td><%=sales.getNumber() %></td>
                <td><%=sales.getName() %></td>
                <td><%=sales.getCDate() %></td>
<%--                <td><%=sales.getBelOrganization()%></td>--%>
<%--                <td><%=sales.getContactPerson()%></td>--%>
<%--                <td><%=sales.getPhone()%></td>--%>
<%--                <td><%=sales.getRmb()%></td>--%>
<%--                <td><%=sales.getDollar()%></td>--%>
<%--                <td><%=sales.getYears()%></td>--%>
<%--                <td><%=sales.getSaleDate().toString()%></td>--%>
<%--                <td><%=sales.getOrganization()%></td>--%>
<%--                <td><%=sales.getNation()%></td>--%>
<%--                <td><%=sales.getDelegate()%></td>--%>
<%--                <td><%=sales.getContactMan()%></td>--%>
<%--                <td><%=sales.getInSpectOrg()%></td>--%>
                <td><%=sales.isConclusion()?"允许":"不允许"%></td>
                <td><%=sales.getInspector()%></td>
                <td><%=sales.getDateInspect().toString()%></td>

                <td><a href="/Wed/update?type=detail&id=<%=sales.getId()%>">详情</a></td>
<%--                这里本来的想法是能在跳转时带上数据，现在通过session实现，但是有个问题，频繁的跳转--%>
                <td><a href="/Wed/update?type=goUpdate&id=<%=sales.getId()%>">修改</a></td>
                <td><a href="/Wed/update?type=del&id=<%=sales.getId()%>">删除</a></td>
            </tr>
<%--            <tr class="detail" style="display: none;">--%>
<%--                    <%=sales.getId() %>--%>
<%--                    <%=sales.getNumber() %>--%>
<%--                    <%=sales.getName() %>--%>
<%--                    <%=sales.getCDate() %>--%>
<%--                    <%=sales.getBelOrganization()%>--%>
<%--                    <%=sales.getContactPerson()%>--%>
<%--                    <%=sales.getPhone()%>--%>
<%--                    <%=sales.getRmb()%>--%>
<%--                    <%=sales.getDollar()%>--%>
<%--                    <%=sales.getYears()%>--%>
<%--                    <%=sales.getSaleDate().toString()%>--%>
<%--                    <%=sales.getOrganization()%>--%>
<%--                    <%=sales.getNation()%>--%>
<%--                    <%=sales.getDelegate()%>--%>
<%--                    <%=sales.getContactMan()%>--%>
<%--                    <%=sales.getInSpectOrg()%>--%>
<%--                    <%=sales.isConclusion()?"允许":"不允许"%>--%>
<%--                    <%=sales.getInspector()%>--%>
<%--                    <%=sales.getDateInspect().toString()%>--%>

<%--                </div>--%>
<%--            </tr>--%>

            <% }%>
        </table>


    </main>
</section>
</body>
</html>
