package com.cc.servlet;

import com.cc.domain.Sales;
import com.cc.service.SalesService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class SearchData extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        SalesService ss = new SalesService();
        String type = req.getParameter("type");
        ArrayList<Sales> result;

        if (type==null){
            resp.getWriter().println("<h1 style='text-align:center;color: pink;padding-top:80px;'>请求参数错误</h1>");
            resp.getWriter().println("<h1 style='text-align:center;color: lightpink;padding-top:80px;'>请求参数错误</h1>");
            resp.getWriter().println("<h1 style='text-align:center;color: lightpink;padding-top:80px;'>请求参数错误</h1>");
            resp.getWriter().println("<h1 style='text-align:center;color: lightblue;padding-top:80px;'>请求参数错误</h1>");
        }
        if("all".equals(type)){
            result = ss.getAllSales();
            req.getSession().setAttribute("result",result);
//            req.getSession().setAttribute("ison","all");
            resp.sendRedirect("/Wed/jsp/all.jsp");
        }
        if ("byId".equals(type)){
            String id = req.getParameter("toSearchId");
            result = ss.getByID(id);
            req.getSession().setAttribute("result",result);
            resp.sendRedirect("/Wed/jsp/searchByID.jsp");
        }
        if ("byName".equals(type)){
            String name = req.getParameter("toSearchName");
            result = ss.getByName(name);
            req.getSession().setAttribute("result",result);
            resp.sendRedirect("/Wed/jsp/searchByName.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
