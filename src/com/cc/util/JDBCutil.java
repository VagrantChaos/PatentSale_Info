package com.cc.util;
import java.sql.ResultSet;

import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.Properties;
public class JDBCutil {
    private static Properties pp=null;
    private static InputStream fis=null;
    private static String driver="";
    private static String url="";
    private static String username="";
    private static String password="";
    private static Connection connection=null;
    private static PreparedStatement ps=null;
    private static ResultSet rs;

    static{

        try {
            //读取配置文件
            pp=new Properties();
            fis=JDBCutil.class.getClassLoader().getResourceAsStream("dbinfo.properties");
            pp.load(fis);
            driver=pp.getProperty("driver");
            url=pp.getProperty("url");
            username=pp.getProperty("username");
            password=pp.getProperty("password");
            Class.forName(driver);
        } catch (Exception e) {
            // 设置默认参数
            driver="com.mysql.jdbc.Driver";
            url="jdbc:mysql://localhost:3306/management?useUnicode=true&characterEncoding=UTF-8";
            username="root";
            password="1234";
            e.printStackTrace();
        }finally {
            // 关闭配置文件
            if(fis!=null)
            {
                try {
                    fis.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

            fis=null;
        }
    }

    public static Connection getConnection()
    {
        try {
            connection = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public static void release(Statement stmt, Connection conn){
        if (stmt != null){
            try {
                stmt.close();
            }catch (SQLException e){
                e.printStackTrace();
            }
            stmt = null;
        }
        if (conn != null){
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            conn = null;
        }
    }

    public static void executeUpdate(String sql,String []parameters)
    {

        try {
            connection=getConnection();
            ps=connection.prepareStatement(sql);
            if(parameters!=null)
            {
                for(int i=0;i<parameters.length;i++)
                {
                    ps.setObject(i+1, parameters[i]);
                }
            }
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e.getMessage());
        }finally{
            release(ps,connection);
        }
    }
    public static ResultSet executeQuery(String sql,String []parameters)
    {
        try {
            connection=getConnection();
            ps=connection.prepareStatement(sql);
            if(parameters!=null&&!parameters.equals(""))
            {
                for(int i=0;i<parameters.length;i++)
                {
                    ps.setObject(i+1, parameters[i]);
                }
            }
            rs=ps.executeQuery();
            return rs;
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e.getMessage());
        }
    }
}
