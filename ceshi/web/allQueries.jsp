<%--
  Created by IntelliJ IDEA.
  User: mario
  Date: 2020/11/26
  Time: 12:17
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

<a style="color: orange" href="index.jsp">返回首页</a><br><br><br><br>
<a style="color: orange" href="add.jsp">添加站点</a><br><br><br><br>

<table style="background: darkblue;color:orange;border-bottom-right-radius: 10px;border-top-right-radius: 10px;border-top-left-radius: 10px;border-bottom-left-radius: 10px;" border="1">
    <tr>
        <th>站号</th>
        <th>站名</th>
        <th>线号</th>

        <th>删除数据</th>
        <th>修改</th>
    </tr>
    <c:forEach var="arr" items="${arr}">
        <tr>
            <td>${arr.number}</td>
            <td>${arr.name}</td>
            <td>${arr.route}</td>

            <td><a style="color: red" href="delServlet?number=${arr.name}">删除</a></td>
            <td><a style="color: red" href="update.jsp"?name=${arr.name}">修改</a></td>

        </tr>

    </c:forEach>


</table>





</body>
</html>
