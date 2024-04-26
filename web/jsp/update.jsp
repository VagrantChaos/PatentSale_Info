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
 <jsp:include page="common.jsp"></jsp:include>
  <div class="center">
    <form action="/Wed/update?type=Update&id=${ updateBook.bookID }" onsubmit="return validate_form(this)" method="post">
    <table border="0" style="MARGIN-RIGHT: auto; MARGIN-LEFT: auto; width:600px;font-size: 22px;">
    <tr align="center"><td colspan=2><h1>修改图书信息</h1></td></tr>


     </table>    
    </form>
    </div>
  </body>
</html>
