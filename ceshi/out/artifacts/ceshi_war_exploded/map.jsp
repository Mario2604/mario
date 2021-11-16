<%--
  Created by IntelliJ IDEA.
  User: mario
  Date: 2020/11/27
  Time: 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
<head>
    <title>SELECT 操作</title>
    <style type="text/css">

        .center-in-center {
            position: absolute;
            top: 20%;
            left: 20%;
        }
        th,td{
            height: 40px;
            font-size: 20px;
            font-family:楷体;}
    </style>
</head>
<body background="timg.jpg">

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/subway?useUnicode=true&characterEncoding=utf-8"
                   user="root"  password=""/>

<sql:query dataSource="${snapshot}" var="result">
    SELECT * from z order by ROUTE ASC,NUMBER asc ;
</sql:query>
<h1 style="color: orange">欢迎使用广州地铁</h1> <a style="font-size: larger" href = "index.jsp"><h3 style="color: orange">返回首页</h3></a><br> <br><br>
<a style="font-size: larger "  href="searchOne.jsp"><h3 style="color: orange">精准查站</h3> </a><br><br><br>
<a style="font-size: larger" href="searchRoute.jsp"><h3 style="color: orange">线号查站</h3></a>
<div class="center-in-center">
<table style="background: darkblue;color:orange;border-bottom-left-radius: 10px;border-bottom-right-radius: 10px;border-top-right-radius: 10px;border-top-left-radius: 10px;" border="1" width="500%">
    <tr>
        <th>站号</th>
        <th>站点名</th>
        <th>线号</th>
    </tr>
    <c:forEach var="row" items="${result.rows}">
        <tr>
            <td><c:out value="${row.NUMBER}"/></td>
            <td><c:out value="${row.MING}"/></td>
            <td><c:out value="${row.ROUTE}"/></td>

        </tr>
    </c:forEach>
</div>

<br>
<br>

</table>

</body>
</html>