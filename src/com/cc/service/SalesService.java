package com.cc.service;

import com.cc.domain.Sales;
import com.cc.util.JDBCutil;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

/*这是处理和数据库之间的操作，再加上数据处理吧
 *增：
 *  addSale
 *删：
 *  delSale
 *改：
 *  updateSale
 *查：
 *  getall
 *  getbyname
 *  getbyid
 * */
//    public String keys = "PatentID,CertificateNumber,PatentName,CompleteDate,BlongOrganization,ContactPerson,Phone,SaleMoney,Dollar,YearsValid,SaleDate,Organization,Nation,Delegate,ContactMan,InSpectOrg,Conlusion,Inspector,DateInspect";
public class SalesService {

    private ArrayList<Sales> result =new ArrayList<>();
    private boolean isOK =true;
    // 获取所有数据
    public ArrayList<Sales> getAllSales() {
        ArrayList<String> va = new ArrayList<>();
        String sql="select * from `patentsaleinfo` ";
        String[] parameters={};
        result = doPack(sql, parameters);
        return result;
    }
    // id查询
    public ArrayList<Sales> getByID(String id){
        String sql="select * from patentsaleinfo where PatentID=?";
        String[] parameters={id};
        result = doPack(sql, parameters);
        return result;
    }
    // name查询
    public ArrayList<Sales> getByName(String name){
        String sql="select * from patentsaleinfo where PatentName like ?";
        String[] parameters={"%"+name+"%"};
        result = doPack(sql, parameters);
        return result;
    }

    public boolean addSale(Sales sales){//
        boolean b = true;
        String sql = "insert into patentsaleinfo(PatentID, CertificateNumber, PatentName, CompleteDate, BlongOrganization, ContactPerson, Phone, SaleMoney, Dollar, YearsValid, SaleDate, Organization, Nation, Delegate, ContactMan, InSpectOrg, Conlusion, Inspector, DateInspect) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        String[] parameters = {
                sales.getId(),
                sales.getNumber(),
                sales.getName(),
                sales.getCDate(),
                sales.getBelOrganization(),
                sales.getContactPerson(),
                sales.getPhone(),
                String.valueOf(sales.getRmb()),
                String.valueOf(sales.getDollar()),
                String.valueOf(sales.getYears()),
                formatDate(sales.getSaleDate()),
                sales.getOrganization(),
                sales.getNation(),
                sales.getDelegate(),
                sales.getContactMan(),
                sales.getInSpectOrg(),
                sales.isConclusion()?"1":"0",
                sales.getInspector(),
                formatDate(sales.getDateInspect())
        };
//        System.out.println(sales);
        try {
            JDBCutil.executeUpdate(sql, parameters);
        } catch (Exception e) {
            e.printStackTrace();
            b = false;
        }
        return b;
    }
    private String formatDate(Date date) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        return (date != null) ? dateFormat.format(date) : null;
    }
    public  boolean delSale(String Id){
        String sql="delete from patentsaleinfo where PatentID=?";
        String parameters[]={Id};
        try {
            JDBCutil.executeUpdate(sql, parameters);
        } catch (Exception e) {
            e.printStackTrace();
            isOK =false;
        }
        return isOK;
    }
    public boolean updateSale(Sales sales){
        boolean b = true;
        String sql="UPDATE patentsaleinfo\n" +
                "SET PatentName = ?,\n" +
                "    CompleteDate = ?,\n" +
                "    BlongOrganization = ?,\n" +
                "    ContactPerson = ?,\n" +
                "    Phone = ?,\n" +
                "    SaleMoney = ?,\n" +
                "    Dollar = ?,\n" +
                "    YearsValid = ?,\n" +
                "    SaleDate = ?,\n" +
                "    Organization = ?,\n" +
                "    Nation = ?,\n" +
                "    Delegate = ?,\n" +
                "    ContactMan = ?,\n" +
                "    InSpectOrg = ?,\n" +
                "    Conlusion = ?,\n" +
                "    Inspector = ?,\n" +
                "    DateInspect = ?\n" +
                "WHERE PatentID = ?;";
        String[] params = {sales.getName(),
        sales.getCDate(),
        sales.getBelOrganization(),
        sales.getContactPerson(),
        sales.getPhone(),
        sales.getRmb()+"",
        sales.getDollar()+"",
        sales.getYears()+"",
        formatDate(sales.getSaleDate()),
        sales.getOrganization(),
        sales.getNation(),
        sales.getDelegate(),
        sales.getContactMan(),
        sales.getInSpectOrg(),
        sales.isConclusion()?"1":"0",
        sales.getInspector(),
        formatDate(sales.getDateInspect()),
        sales.getId()};
        try {
            JDBCutil.executeUpdate(sql, params);
        }catch (Exception e){
            b=false;
        }
        return b;
    }



    //    查询操作的分装都可以用这个
    public ArrayList<Sales> doPack(String sql, String[] parameters){
        ArrayList<Sales> saless = new ArrayList<>();
        ResultSet rs=JDBCutil.executeQuery(sql, parameters);
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
                sales.setDollar(rs.getDouble(9));
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
                saless.add(sales);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return saless;
    }
}
