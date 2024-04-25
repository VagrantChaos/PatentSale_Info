<%@ page language="java" import="java.util.*,com.mag.domain.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>更新图书信息</title>
<SCRIPT language="javascript" type="text/javascript" src="/Book/js/checkupdate.js"></SCRIPT>
	<style type="text/css" media="screen">
                .center{
                       
                       margin:8%;
                       text-align:center; 
                }

     </style>

  </head>
  
  <body>
  <header style="background-color: #fff;position: fixed;left: 0;right: 0;top:0;min-height: 60px;padding: 0 10px;border-bottom: 1px solid #f1f2f7">
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
  <div class="center">
    <form action="/Wed/update?type=Update&id=${ updateBook.bookID }" onsubmit="return validate_form(this)" method="post">
    <table border="0" style="MARGIN-RIGHT: auto; MARGIN-LEFT: auto; width:600px;font-size: 22px;">
    <tr align="center"><td colspan=2><h1>修改图书信息</h1></td></tr>


     </table>    
    </form>
    </div>
  </body>
</html>
