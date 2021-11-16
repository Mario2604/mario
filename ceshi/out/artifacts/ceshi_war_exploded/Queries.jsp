<%--
  Created by IntelliJ IDEA.
  User: mario
  Date: 2020/12/2
  Time: 22:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"
         language="java" import="entity.subway,java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
<head>
    <title>全部查询</title>
    <style>
        table{
            margin:auto;
            width:60%;
            text-align:center;
        }
        th,td{
            height: 40px;
            font-size: 20px;
            font-family:楷体;
        }
        a{
            font-size:20px;
        }
    </style>

</head>
<body background="timg.jpg">

<a href="index.jsp"><h2>返回首页</h2></a><br><br>



<table style="background: darkblue;color:orange;border-bottom-right-radius: 10px;border-top-right-radius: 10px;border-top-left-radius: 10px;border-bottom-left-radius: 10px;" border="1">
    <tr>
        <th>站号</th>
        <th>站名</th>
        <th>线号</th>



    </tr>
    <c:forEach var="arr" items="${arr}">
        <tr>
            <td>${arr.number}</td>
            <td>${arr.name}</td>
            <td>${arr.route}</td>




        </tr>

    </c:forEach>



</table>





</body>
</html>
