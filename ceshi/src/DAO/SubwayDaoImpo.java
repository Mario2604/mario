package DAO;

import entity.Bean;
import entity.subway;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static entity.Bean.close;

public class SubwayDaoImpo implements SubwayDAO {
    Connection conn = null;
    Statement stmt = null;
    PreparedStatement ptmt = null;
    ResultSet rs = null;
    List<subway> arr = null;
    subway message;


    @Override
    public List<subway> findAll() {


        try {

            //1.获取链接
            conn= Bean.getConnection();
            //2.执行sql
            String sql = "select * from z  ORDER BY ROUTE ASC, NUMBER ASC ";
            //3.获取执行sql对象
            stmt = conn.createStatement();
            //4.执行sql
            rs = stmt.executeQuery(sql);
            //5.遍历结果集，封装对象，装载集合
            subway message = null;
            arr = new ArrayList<subway>();

            while (rs.next()) {
                //获取数据
                int number = rs.getInt(1);
                String name = rs.getString(2);
                String route = rs.getString(3);


                //创建Message对象，并赋值
                message = new subway();
                message.setNumber(number);
                message.setName(name);
                message.setRoute(route);

                //装载集合
                arr.add(message);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        close(rs, stmt, conn);


        return arr;
    }

    @Override
    public void delete(String number) {


        try {
            //1.获取链接
            conn = Bean.getConnection();
            //2.执行sql
            String sql = "delete from z where MING = ?";
            //3.获取执行sql对象
            ptmt = conn.prepareStatement(sql);
            //4.传参
            ptmt.setString(1, number);
            //5.执行
            ptmt.execute();


        } catch (SQLException e) {
            e.printStackTrace();
        }


        close(ptmt, conn);

    }

    @Override
    public subway findMessageById(int number) {
        try {
            conn = Bean.getConnection();
            String sql = "select * from z where NUMBER = ?";
            ptmt = conn.prepareStatement(sql);
            ptmt.setInt(1, number);
            rs = ptmt.executeQuery();


            String name = rs.getString(2);
            String route = rs.getString(3);


            //创建Message对象，并赋值
            message = new subway();
            message.setNumber(number);
            message.setName(name);
            message.setRoute(route);

        } catch (SQLException e) {
            e.printStackTrace();
        }
        close(rs, ptmt, conn);
        return message;

    }





    @Override
    public void Update(int number, String name, String route) {
        try {
            conn = Bean.getConnection();
            String sql = "update z set  NUMBER = ?,ROUTE = ?where MING = ?";
            ptmt = conn.prepareStatement(sql);
            ptmt.setInt(1, number);
            ptmt.setString(3, name);
            ptmt.setString(2, route);

            ptmt.execute();
             ptmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        close(ptmt, conn);

    }

    @Override
    public void insert(int number, String name, String route) {
        try {
            conn = Bean.getConnection();
            String sql = "insert into z (NUMBER,MING,ROUTE) values (?,?,?)";
            ptmt = conn.prepareStatement(sql);
            ptmt.setInt(1, number);
            ptmt.setString(2, name);
            ptmt.setString(3, route);

            ptmt.execute();


        } catch (SQLException e) {
            e.printStackTrace();
        }

        close(ptmt, conn);

    }

    @Override
    public List<subway> findAll2(String sql) {

        try {

            conn = Bean.getConnection();


            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
            arr = new ArrayList<subway>();

            while (rs.next()) {
                int number = rs.getInt(1);
                String name = rs.getString(2);
                String route = rs.getString(3);


                //创建Message对象，并赋值
                message = new subway();
                message.setNumber(number);
                message.setName(name);
                message.setRoute(route);

                //装载集合
                arr.add(message);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        close(rs,stmt,conn);
        return arr;

    }

    @Override
    public List<subway> findOne(String name) {

        try {
            conn = Bean.getConnection();
            arr = new ArrayList<subway>();
            String sql = "select * from z where MING = ?";
            subway message = null;
            ptmt = conn.prepareStatement(sql);
            ptmt.setString(1,name);
            rs = ptmt.executeQuery();
            while (rs.next()) {
                int number = rs.getInt(1);
                name = rs.getString(2);
                String route = rs.getString(3);


                //创建Message对象，并赋值
                message = new subway();
                message.setNumber(number);
                message.setName(name);
                message.setRoute(route);

                //装载集合
                arr.add(message);
            }



        } catch (SQLException e) {
            e.printStackTrace();
        }
        Bean.close(rs,ptmt,conn);
        return arr;

    }

    @Override
    public List<subway> findTwo(String name,String name2) {

        try {
            conn = Bean.getConnection();
            arr = new ArrayList<subway>();
            String sql = "select * from z where  MING = ?and MING=?";
            subway message = null;
            ptmt = conn.prepareStatement(sql);
            ptmt.setString(1,name);
            ptmt.setString(2,name2);
            rs = ptmt.executeQuery();
            while (rs.next()) {
                int number = rs.getInt(1);
                name = rs.getString(2);
                String route = rs.getString(3);


                //创建Message对象，并赋值
                message = new subway();
                message.setNumber(number);
                message.setName(name);
                message.setRoute(route);

                //装载集合
                arr.add(message);
            }



        } catch (SQLException e) {
            e.printStackTrace();
        }
        Bean.close(rs,ptmt,conn);
        return arr;

    }

    @Override
    public List<subway> findRoute(String route) {

        try {
            conn = Bean.getConnection();
            arr = new ArrayList<subway>();
            String sql = "select * from z where ROUTE = ?ORDER BY ROUTE ASC, NUMBER ASC ";
            subway message = null;
            ptmt = conn.prepareStatement(sql);
            ptmt.setString(1,route);
            rs = ptmt.executeQuery();
            while (rs.next()) {
                int number = rs.getInt(1);
              String  name = rs.getString(2);
                 route = rs.getString(3);


                //创建Message对象，并赋值
                message = new subway();
                message.setNumber(number);
                message.setName(name);
                message.setRoute(route);

                //装载集合
                arr.add(message);
            }



        } catch (SQLException e) {
            e.printStackTrace();
        }
        Bean.close(rs,ptmt,conn);
        return arr;

    }

}
