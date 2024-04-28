package com.cc.test;

import com.cc.util.JDBCutil;

import java.sql.*;

public class JDBCtest {
    public static void main(String[] args) throws SQLException {
        Connection connection = JDBCutil.getConnection();
        Statement st = connection.createStatement();

        String sql = "select * from patentsaleinfo";
//        ResultSet rs = st.executeQuery(sql);
//        while (rs.next()){
////            System.out.println(rs.getString("PatentID"));
//            System.out.println(rs.getString(1));
//            System.out.println(rs.getString(2));
//            System.out.println(rs.getString(3));
//            System.out.println(rs.getString(4));
//            System.out.println(rs.getString(5));
//            System.out.println(rs.getString(6));
//            System.out.println(rs.getString(7));
//            System.out.println(rs.getDouble(8));
//            System.out.println(rs.getDouble(8));
//            System.out.println(rs.getDouble(9));
//            System.out.println(rs.getInt(10));
//            System.out.println(rs.getDate(11));
//            System.out.println(rs.getString(12));
//            System.out.println(rs.getString(13));
//            System.out.println(rs.getString(14));
//            System.out.println(rs.getString(15));
//            System.out.println(rs.getString(16));
//            System.out.println(rs.getBoolean(17));
//            System.out.println(rs.getString(18));
//        }

        sql ="insert into patentsaleinfo (PatentID,CertificateNumber,PatentName,CompleteDate,BlongOrganization,ContactPerson,Phone,SaleMoney,Dollar,YearsValid,SaleDate,Organization,Nation,Delegate,ContactMan,InSpectOrg,Conlusion,Inspector,DateInspect) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

        PreparedStatement ps = connection.prepareStatement(sql);

        String[] params = {"7","11","name","2024年3月21日-2024年4月21日","hf","zhang","12345678901","100","700","5","2024-4-1","china","china","ccc","ab", "hhh","1","ccc","2024-4-2"};
        JDBCutil.executeUpdate(sql,params);
    }
}
