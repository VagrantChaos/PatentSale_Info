package com.cc.servlet;

import com.cc.domain.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

public class LoginServlet extends HttpServlet {
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
        String checkCode = req.getParameter("check_code");
        String savedCode = (String) req.getSession().getAttribute("check_code");
        if(psd.equals(users.get(usr))&& checkCode.equals(savedCode)){
            User user = new User();
            user.setUsername(usr);
            user.setPassword(psd);
            req.getSession().setAttribute("user",user);
//            resp.sendRedirect("/Wed/index.jsp");
            resp.sendRedirect("/Wed/hello");
        }else if (checkCode.equals(savedCode)){
            resp.getWriter().println("密码错误");
        }else {
            resp.getWriter().println("验证码错误");
        }
    }
}
