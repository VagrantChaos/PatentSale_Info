package com.cc.servlet;

import com.cc.domain.User;
import com.cc.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;

public class Login extends HttpServlet {
    HashMap<String, String> users = new HashMap<String, String>();

    @Override
    public void init() throws ServletException {
        users.put("a","1234");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        String usr = req.getParameter("usr");
        String psd = req.getParameter("psd");
        String checkCode = req.getParameter("checkCode");
        String rightCode = (String) req.getSession().getAttribute("rightCode");
        UserService us = new UserService();
        if (!checkCode.equals(rightCode)){
            resp.getWriter().println("<script language='javascript'>alert('验证码错误');window.location.href='/Wed';</script>");
        }else {
            try {
                if (us.getUser(usr,psd)){
                    User user = new User(usr,psd);
                    req.getSession().setAttribute("user", user);
                    resp.sendRedirect("/Wed/jsp/index.jsp");
                }else {
                    resp.getWriter().println("<script language='javascript'>alert('用户名或密码错误');window.location.href='/Wed';</script>");
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }



//            if (!psd.equals(users.get(usr))){
//            resp.getWriter().println("<script language='javascript'>alert('用户名或密码错误');window.location.href='/Wed';</script>");
//        }else {
//            User user = new User();
//            user.setUsername(usr);
//            user.setPassword(psd);
//            req.getSession().setAttribute("user",user);
//            resp.sendRedirect("/Wed/jsp/index.jsp");
//        }
    }
}
