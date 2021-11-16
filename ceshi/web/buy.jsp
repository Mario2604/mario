<%@ page contentType="text/html;charset=UTF-8"
         language="java" import="entity.subway,java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>

<html>
<head>

    <title>全部查询</title>
    <style>
        .center-in-center {
            position: absolute;
            top: 20%;
            left: 40%;
        }
        table {
            margin: auto;
            width: 60%;
            text-align: center;
        }

        th, td {
            height: 40px;
            font-size: 20px;
            font-family: 楷体;
        }

        a {
            font-size: 20px;
        }

    </style>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body background="timg.jpg">

<a style="color: orange" href="index.jsp"><h3>返回首页</h3></a><br><br>
<a style="color: orange" href="searchTwo.jsp"><h3>精准购票</h3></a><br><br>
<table style="background:darkblue;color:orange;border-bottom-left-radius: 10px;border-bottom-right-radius: 10px;border-top-right-radius: 10px;border-top-left-radius: 10px;" border="1">
    <tr>
        <th>站号</th>
        <th>站名</th>
        <th>线号</th>

        <th>选择起点</th>
        <th>选择终点</th>
    </tr>

    <div class="container">
        <form style="background: darkgoldenrod;" action="caculateServlet" method="get">
           <c:forEach var="arr" items="${arr}">
                <tr>
                    <td>${arr.number}</td>
                    <td>${arr.name}</td>
                    <td>${arr.route}</td>
                    <td><input type="radio" name="number"  value="${arr.number}">起点</td>
                    <td><input type="radio" name="number2"  value="${arr.number}">终点</td>

                </tr>

            </c:forEach><br>


            <button  class="btn btn-danger"type="submit"><h3 style="color: orange">确认购买</h3></button>
        </form>

    </div>


</table>


</body>
</html>
