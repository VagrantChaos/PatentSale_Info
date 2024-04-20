package com.cc.servlet;

import com.cc.domain.User;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;

public class Hello extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        resp.setHeader("Refresh","2");
        String data = "Hello";
        resp.setContentType("text/html;charset=utf-8");
        HttpSession session = req.getSession();
        User user = (User)session.getAttribute("user");
        if(user == null){
            resp.getWriter().println("please login<a href='/Wed/jsp/login.jsp'>登录</a>");
        }else {
            resp.getWriter().println(data+user.getUsername());
            /*
            Cookie cookie = new Cookie("", session.getId());
            cookie.setMaxAge(60*30);
            cookie.setPath("/");
            resp.addCookie(cookie);
            */
        }


    }
}