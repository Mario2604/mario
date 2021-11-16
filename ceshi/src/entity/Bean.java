package entity;


import java.sql.*;
import java.util.Properties;

public class Bean {

    private static String   url="jdbc:mysql://localhost:3306/subway?characterEncoding=utf-8";
    private static String  user="root";
    private static String password="";
    private static String  driver="com.mysql.jdbc.Driver";




    static{
        try {
            Properties pro = new Properties();

            ClassLoader classLoader = Bean.class.getClassLoader();







            Class.forName(driver);


        }  catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(url,user,password);
    }

    public static void close(Statement stmt, Connection conn){
        if(stmt != null){
            try {
                stmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if(conn != null){
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }

    public static void close(ResultSet rs, Statement stmt, Connection conn){
        if(rs != null){
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if(stmt != null){
            try {
                stmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if(conn != null){
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }


}
