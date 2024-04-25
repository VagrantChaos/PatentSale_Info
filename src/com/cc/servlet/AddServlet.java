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

        response.setContentType("text/html");
        SalesService ss = new SalesService();
        Sales sales = new Sales();

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String id = request.getParameter("id");
        String number = request.getParameter("number");
        String name = request.getParameter("name");
        String cDate = request.getParameter("cDate");
        String belOrganization = request.getParameter("belOrganization");
        String contactPerson = request.getParameter("contactPerson");
        String phone = request.getParameter("phone");
        double rmb = Double.parseDouble(request.getParameter("rmb"));
//        double dollar = Double.parseDouble(request.getParameter("dollar"));
        int years = Integer.parseInt(request.getParameter("years"));
        try {
            Date saleDate = dateFormat.parse(request.getParameter("saleDate"));
            sales.setSaleDate(saleDate);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
        String organization = request.getParameter("organization");
        String nation = request.getParameter("nation");
        String delegate = request.getParameter("delegate");
        String contactMan = request.getParameter("contactMan");
        String inSpectOrg = request.getParameter("inSpectOrg");
        boolean conclusion = Boolean.parseBoolean(request.getParameter("conclusion"));
        String inspector = request.getParameter("inspector");
        try {
            Date dateInspect = dateFormat.parse(request.getParameter("dateInspect"));
            sales.setDateInspect(dateInspect);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }

        sales.setId(id);
        sales.setNumber(number);
        sales.setName(name);
        sales.setCDate(cDate);
        sales.setBelOrganization(belOrganization);
        sales.setContactPerson(contactPerson);
        sales.setPhone(phone);
        sales.setRmb(rmb);
        sales.setDollar(rmb*7);// TODO
        sales.setYears(years);
        sales.setOrganization(organization);
        sales.setNation(nation);
        sales.setDelegate(delegate);
        sales.setContactMan(contactMan);
        sales.setInSpectOrg(inSpectOrg);
        sales.setConclusion(conclusion);
        sales.setInspector(inspector);

//        int count = ss.GetCountOfBookByID(bookID);
//        if (count == 0) {
//            // 添加书
//            ss.addSale(Sales);
//
//            // 得到刚刚添加的新书
//            sales = ss.CheckBook(sales);
//
//            request.getSession().setAttribute("updateBook", sales);
//            response.sendRedirect("/Book/jsp/update.jsp");
//        } else {
//            request.setAttribute("ExpAddError", "图书:'"+bookID+"'已存在，请重新输入！");
//            request.setAttribute("updateBook", sales);
//            request.getRequestDispatcher("/jsp/AddBook.jsp").forward(request,
//                    response);
//        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        this.doGet(request, response);
    }

}
