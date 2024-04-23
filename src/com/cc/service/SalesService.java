package com.cc.service;

import com.cc.domain.Sales;
import com.cc.util.JDBCutil;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class SalesService {
//    这里处理所有的curd函数
    public String keys = "PatentID,CertificateNumber,PatentName,CompleteDate,BlongOrganization,ContactPerson,Phone,SaleMoney,Dollar,YearsValid,SaleDate,Organization,Nation,Delegate,ContactMan,InSpectOrg,Conlusion,Inspector,DateInspect";
    public ArrayList<Sales> GetAllSales()
    {
        ArrayList<Sales> al=new ArrayList<>();
        ArrayList<String> va = new ArrayList<>();
        String sql="select * from `patentsaleinfo` ";
        String[] parameters={};
        ResultSet rs= JDBCutil.executeQuery(sql, parameters);
        try {
            while(rs.next())
            {
                Sales sales = new Sales();
                sales.setId(rs.getString(1));
                sales.setNumber(rs.getString(2));
                sales.setName(rs.getString(3));
                sales.setCDate(rs.getString(4));
                sales.setBelOrganization(rs.getString(5));
                sales.setContactPerson(rs.getString(6));
                sales.setPhone(rs.getString(7));
                sales.setRmb(rs.getDouble(8));
                System.out.println(rs.getDouble(8));
                sales.setDollar(rs.getDouble(9));// TODO
                sales.setYears(rs.getInt(10));
                sales.setSaleDate(rs.getDate(11));
                sales.setOrganization(rs.getString(12));
                sales.setNation(rs.getString(13));
                sales.setDelegate(rs.getString(14));
                sales.setContactMan(rs.getString(15));
                sales.setInSpectOrg(rs.getString(16));
                sales.setConclusion(rs.getBoolean(17));
                sales.setInspector(rs.getString(18));
                sales.setDateInspect(rs.getDate(19));
                al.add(sales);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return al;
    }
}
