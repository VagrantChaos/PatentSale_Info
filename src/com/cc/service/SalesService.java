package com.cc.service;

import com.cc.domain.Sales;
import com.cc.util.JDBCutil;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
        boolean b=true;
        String sql="insert into patentsaleinfo(PatentID,CertificateNumber,PatentName,CompleteDate,BlongOrganization,ContactPerson,Phone,SaleMoney,Dollar,YearsValid,SaleDate,Organization,Nation,Delegate,ContactMan,InSpectOrg,Conlusion,Inspector,DateInspect) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";//
        String[] parameters={
                sales.getId(),
                sales.getNumber(),
                sales.getName(),
                sales.getCDate(),
                sales.getBelOrganization(),
                sales.getContactPerson(),
                sales.getPhone(),
                sales.getRmb()+"",
                sales.getRmb()*7+"",
                sales.getYears()+"",
                sales.getSaleDate()+"",
                sales.getOrganization(),
                sales.getNation(),
                sales.getDelegate(),
                sales.getInSpectOrg(),
                sales.isConclusion()+"",
                sales.getInspector(),
                sales.getDateInspect()+""};
        //String parameters[]={user.getUserName(),user.getSex(),user.getMobilePhone(),user.getGrade(),user.getPassword()};
        try {
            JDBCutil.executeUpdate(sql, parameters);
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            b=false;
        }
        return b;
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
    public boolean updateSale(){
        return true;
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
                saless.add(sales);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return saless;
    }
}
