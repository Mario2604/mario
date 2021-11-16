<%--
  Created by IntelliJ IDEA.
  User: mario
  Date: 2020/11/26
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%request.setCharacterEncoding("utf-8");%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<html>
<head>
    <title>添加数据</title>
    <style type="text/css">

        .center-in-center {
            position: absolute;
            top: 20%;
            left: 40%;
        }

    </style>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>首页</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body background="timg.jpg">
</table><br>
<a style="color: orange" href = "index.jsp"><h3>返回首页</h3></a><br><br>
<div class="center-in-center">
    <form action="insertServlet" method = "get">
     <h1 style="color:orange">添加站点</h1>
    站号：<input type="text" name="number"class="form-control"onkeyup="value=value.replace(/^(0+)|[^\d]+/g,'')"><br><br>
    站名:<input type = "text" name = "name"class="form-control"><br><br>
    线号:<input type = "text" name = "route"class="form-control"onkeyup="value=value.replace(/^(0+)|[^\d]+/g,'')"><br><br>

        <button class="btn btn-lg btn-primary btn-block" type="submit">提交</button>
</form>
</div>

</body>
</html>