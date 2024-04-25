package com.cc.test;

import com.cc.domain.Sales;
import com.cc.service.SalesService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class Hello extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        resp.setHeader("Refresh","2");
//        String data = "Hello";
//        HttpSession session = req.getSession();
//        User user = (User)session.getAttribute("user");
//        if(user == null){
//            resp.getWriter().println("please login<a href='/Wed/jsp/login.jsp'>登录</a>");
//        }else {
//            resp.getWriter().println(data+user.getUsername());
//            /*
//            Cookie cookie = new Cookie("", session.getId());
//            cookie.setMaxAge(60*30);
//            cookie.setPath("/");
//            resp.addCookie(cookie);
//            */
//        }

        resp.setContentType("text/html;charset=utf-8");
        SalesService ss = new SalesService();
        ArrayList<Sales> al = ss.getAllSales();
        for (Sales a : al){
            resp.getWriter().println(a.getId());
            resp.getWriter().println("  "+a.getName());
            resp.getWriter().println("  "+a.getNumber());
            resp.getWriter().println("  "+a.getCDate());
            resp.getWriter().println("  "+a.getBelOrganization());
            resp.getWriter().println("  "+a.getContactPerson());
            resp.getWriter().println("  "+a.getPhone());
            resp.getWriter().println("  "+a.getRmb());
            resp.getWriter().println("  "+a.getDollar());
            resp.getWriter().println("  "+a.getYears());
            resp.getWriter().println("  "+a.getSaleDate().toString());
            resp.getWriter().println("  "+a.getOrganization());
            resp.getWriter().println("  "+a.getNation());
            resp.getWriter().println("  "+a.getDelegate());
            resp.getWriter().println("  "+a.getContactMan());
            resp.getWriter().println("  "+a.getInSpectOrg());
            resp.getWriter().println("  "+a.isConclusion());
            resp.getWriter().println("  "+a.getInspector());
            resp.getWriter().println("  "+a.getDateInspect().toString());
            resp.getWriter().println("<br>");
        }
    }
}