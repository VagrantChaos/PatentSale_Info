package com.cc.servlet;

import com.cc.domain.Sales;
import com.cc.service.SalesService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Add extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");

        String id = request.getParameter("id");
        String number = request.getParameter("number");
        String name = request.getParameter("name");
        String startDateString = request.getParameter("startDate");
        String endDateString = request.getParameter("endDate");
        String belOrganization = request.getParameter("belOrganization");
        String contactPerson = request.getParameter("contactPerson");
        String phone = request.getParameter("phone");
        double rmb = Double.parseDouble(request.getParameter("rmb"));
        double dollar = Double.parseDouble(request.getParameter("dollar"));
        int years = Integer.parseInt(request.getParameter("years"));
        String saleDateString = request.getParameter("saleDate");
        String organization = request.getParameter("organization");
        String nation = request.getParameter("nation");
        String delegate = request.getParameter("delegate");
        String contactMan = request.getParameter("contactMan");
        String inSpectOrg = request.getParameter("inSpectOrg");
        boolean conclusion = request.getParameter("conclusion") != null;
        String inspector = request.getParameter("inspector");
        String dateInspectString = request.getParameter("dateInspect");

        // 将日期字符串转换为 Date 对象
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat toFormat = new SimpleDateFormat("yyyy年MM月dd日");
        Date startDate = null;
        Date endDate = null;
        Date saleDate = null;
        Date dateInspect = null;
        try {
            startDate = dateFormat.parse(startDateString);
            endDate = dateFormat.parse(endDateString);
            startDateString = toFormat.format(startDate);
            endDateString = toFormat.format(endDate);
            saleDate = dateFormat.parse(saleDateString);
            dateInspect = dateFormat.parse(dateInspectString);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        String cDate = startDateString+"-"+endDateString;

        Sales sales = new Sales(
                id,
                number,
                name,
                cDate,
                belOrganization,
                contactPerson,
                phone,
                rmb,
                dollar,
                years,
                saleDate,
                organization,
                nation,
                delegate,
                contactMan,
                inSpectOrg,
                conclusion,
                inspector,
                dateInspect
        );
        request.getSession().setAttribute("adding", sales);
        SalesService ss = new SalesService();
        if (!ss.getByID(id).isEmpty()){
           response.getWriter().println("<script language='javascript'>alert('id已存在');window.location.href='/Wed/jsp/add.jsp';</script>");
        } else if(ss.addSale(sales)){
            request.getSession().setAttribute("adding", "");
            response.getWriter().println("<script language='javascript'>confirm('添加成功');window.location.href='/Wed/jsp/add.jsp';</script>");
//            response.sendRedirect("/Wed/jsp/add.jsp");
        }else {
           response.getWriter().println("<script language='javascript'>alert('添加失败');window.location.href='/Wed/jsp/add.jsp';</script>");
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.doGet(request, response);
    }

}
