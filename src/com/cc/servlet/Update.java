package com.cc.servlet;

import com.cc.domain.Sales;
import com.cc.service.SalesService;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.interfaces.RSAPrivateCrtKey;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class Update extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        req.setCharacterEncoding("UTF-8");
        String type = req.getParameter("type");
        String id = req.getParameter("id");
        SalesService ss = new SalesService();
        if ("del".equals(type)){
            if(ss.delSale(id)){
                resp.sendRedirect("/Wed/searchData?type=all");
            }else {
                resp.getWriter().println("<script language='javascript'>alert('删除失败');window.location.href='/Wed/searchData?type=all';</script>");
            }
        }
        if ("goUpdate".equals(type)){
            ArrayList<Sales> result =  ss.getByID(id);
            req.getSession().setAttribute("result", result.get(0));
            resp.sendRedirect("/Wed/jsp/update.jsp");
        }
        if ("detail".equals(type)){
            ArrayList<Sales> result =  ss.getByID(id);
            req.getSession().setAttribute("result", result.get(0));
            resp.sendRedirect("/Wed/jsp/detail.jsp");
        }
        if ("update".equals(type)){
            String idtou = req.getParameter("id");
            String number = req.getParameter("number");
            String name = req.getParameter("name");
            String startDateString = req.getParameter("startDate");
            String endDateString = req.getParameter("endDate");
            String belOrganization = req.getParameter("belOrganization");
            String contactPerson = req.getParameter("contactPerson");
            String phone = req.getParameter("phone");
            double rmb = Double.parseDouble(req.getParameter("rmb"));
            double dollar = Double.parseDouble(req.getParameter("dollar"));
            int years = Integer.parseInt(req.getParameter("years"));
            String saleDateString = req.getParameter("saleDate");
            String organization = req.getParameter("organization");
            String nation = req.getParameter("nation");
            String delegate = req.getParameter("delegate");
            String contactMan = req.getParameter("contactMan");
            String inSpectOrg = req.getParameter("inSpectOrg");
            boolean conclusion = req.getParameter("conclusion") != null;
            String inspector = req.getParameter("inspector");
            String dateInspectString = req.getParameter("dateInspect");

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
                    idtou,
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
            req.getSession().setAttribute("result", sales);
            if(ss.updateSale((Sales) req.getSession().getAttribute("result"))){
                resp.sendRedirect("/Wed/searchData?type=all");
            }else {
                resp.getWriter().println("<script language='javascript'>alert('更新失败');window.location.href='/Wed/searchData?type=all';</script>");
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
