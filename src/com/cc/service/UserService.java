package com.cc.service;

import com.cc.util.JDBCutil;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserService {
    public boolean getUser(String usr, String psd) throws SQLException {
        String sql = "select * from users where username=? and password=?";
        String[] params = {usr,psd};
        ResultSet rs = JDBCutil.executeQuery(sql, params);
        if (rs.next()){
            rs.close();
            return true;
        }else {
            rs.close();
            return false;
        }
    }
    public boolean addUser(String usr, String psd){
        String sql = "insert into users (username,password) values (?,?)";
        String[] params = {usr, psd};
        try {
            JDBCutil.executeUpdate(sql,params);
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
        return true;
    }
}
