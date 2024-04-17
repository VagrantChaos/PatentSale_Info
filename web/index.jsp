<%@ page language="java"  pageEncoding="utf-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<%--    <meta charset="utf-8" />--%>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>PatentSale_Info</title>
    <link href="css/index.css" rel="stylesheet"/>
    <script language="javascript" type="text/javascript" src="js/index.js"></script>
</head>
<body>
    <div class="menu">
        <main>
            <h1>PatentSale_Info</h1>
            <hr>
<%--            <input id="getData" type="button" value="获取数据" onclick="getData()">--%>
            <table id="buttons" >
                <tr align="center">
                    <td><input type="button" id="showAll" class="btn" value="显示所有书" onclick=is_submit(1); /></td>
                    <td><input type="button" id="searchById" class="btn" value="ID查询" onclick=is_submit(2); /></td>
                    <td><input type="button" id="searchByName" class="btn" value="书名查询" onclick=is_submit(3); /></td>
                    <td><input type="button" id="addBook"  class="btn" value="增加图书" onclick=is_submit(4); /></td>
<%--                    <td><input type="button" id="close" class="btn" value="退出"  onclick=close_c(); /></td>--%>
                </tr>
            </table>
        </main>
        <footer>
            <p>
<%--            foot--%>
            </p>
        </footer>
    </div>
</body>

</html>