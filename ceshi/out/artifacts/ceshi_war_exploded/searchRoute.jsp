<%--
  Created by IntelliJ IDEA.
  User: mario
  Date: 2020/12/19
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style type="text/css">


    .center-in-center {
        position: absolute;
        top: 40%;
        left: 40%;
    }

</style>
<head>
    <meta charset="UTF-8">
    <title>路线查询</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body background="timg.jpg">
<a href="index.jsp"><h3 style="color: orange">返回首页</h3></a><br><br>
<div class="center-in-center">
    <h1>路线查询</h1>
    <form action="saarchbyRouteServlet" method = "get">
        路线：<input type = "text" name = "route"class="form-control"placeholder="请输入路线"><br>

        <input type = "submit" value = "提交" class="form-control">

    </form>
</div>

</body>
</html>