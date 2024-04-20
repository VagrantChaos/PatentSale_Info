package com.cc.servlet;

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
        String usr = req.getParameter("usr");
        String psd = req.getParameter("psd");

        if(psd.equals(users.get(usr))){
            req.setAttribute("usr",usr);
            resp.sendRedirect("/Wed/index.jsp");
        }else {
            resp.sendRedirect("/Wed/");
        }
    }
}
