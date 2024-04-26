package com.cc.servlet;

import com.cc.domain.Sales;
import com.cc.service.SalesService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.DataInput;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class AddServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");

        String id = request.getParameter("id");
        String number = request.getParameter("number");
        String name = request.getParameter("name");
        String startDateString = request.getParameter("startDate");
        String endDateString = request.getParameter("endDate");
        String cDate = startDateString+"-"+endDateString;
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
        Date saleDate = null;
        Date dateInspect = null;
        try {
            saleDate = dateFormat.parse(saleDateString);
            dateInspect = dateFormat.parse(dateInspectString);
        } catch (ParseException e) {
            e.printStackTrace();
        }

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
        SalesService ss = new SalesService();
        ss.addSale(sales);// TODO: 没加进怎么办，先获取数据库看有没有
        response.sendRedirect("/Wed/jsp/add.jsp");
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        this.doGet(request, response);
    }

}
