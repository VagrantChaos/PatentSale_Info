<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2024/4/19
  Time: 19:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test</title>
</head>
<body>
<form name="form1" id="form1" action=""  method="post"  >
    <table border="0"
           style="MARGIN-RIGHT: auto; MARGIN-LEFT: auto; width: 400px; font-size: 22px;">
        <tr align="center">
            <td colspan=2>
                <h1>
                    图书信息管理系统
                </h1>
            </td>
        </tr>
    </table>
    <table border="0"
           style="MARGIN-RIGHT: auto; MARGIN-LEFT: auto; width: 600px; font-size: 22px;">
        <tr align="center">
            <td>
                <input type="button" id="querrybyall" style="width:130px;height:30px ; font-size:20px;" value="显示所有书"
                       onclick="is_submit(1)"/>

            </td>
            <td>
                <input type="button" id="querrybyid" style="width:80px;height:30px ; font-size:20px;" value="ID查询"
                       onclick=is_submit(2); />
            </td>
            <td>
                <input type="button" id="querrybyname" style="width:100px;height:30px ; font-size:20px;" value="书名查询"
                       onclick=is_submit(3); />
            </td>
            <td>
                <input type="button" id="AddBook" style="width:100px;height:30px ; font-size:20px;" value="增加图书"
                       onclick=is_submit(4); />
            </td>
            <td><input type="button" name="close" value="退出" style="width:70px;height:30px ; font-size:20px;" onclick="custom_close()" /></td>
        </tr>
    </table>
    <br/>
    <img src="/Book/img/index.jpg">

</form>
</body>
</html>
