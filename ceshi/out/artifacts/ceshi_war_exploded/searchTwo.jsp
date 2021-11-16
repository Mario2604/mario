<%--
  Created by IntelliJ IDEA.
  User: mario
  Date: 2020/12/23
  Time: 23:10
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
    <title>精准购票</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body background="timg.jpg">
<a href="index.jsp"><h3 style="color: orange">返回首页</h3></a><br><br>
<div class="center-in-center">
    <h1 style="color: darkblue">精准购票</h1>
    <form action="searchTwoServlet" method = "get">
        <input type="text"  name="name" class="form-control" placeholder="输入站名" required><br>
        <input type="text"  name="name2" class="form-control" placeholder="输入站名" required><br>
        <button class="btn btn-lg btn-primary btn-block" type="submit">提交</button>

    </form>
</div>

</body>
</html>