<%--
  Created by IntelliJ IDEA.
  User: mario
  Date: 2020/11/27
  Time: 18:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<style type="text/css">

    .center-in-center {
        position: absolute;
        top: 20%;
        left: 40%;
    }

</style>
<head>
    <title>修改数据</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>首页</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body background="timg.jpg">

<a style="color: orange" href="index.jsp"><h3>返回首页</h3></a><br><br><br><br>
</table><br><br>
<div class="center-in-center" ><form action="updateSubwayServlet" method = "get">
    <h1 style="color: orange">修改数据</h1><br>

    <input type = "text"  name = "name"class="form-control"placeholder="要修改的站名"><br><br>
    站号：<input type="number" name="number" class="form-control"placeholder="修改后的站号"><br><br>
    线号:<input type = "number" name = "route"class="form-control"placeholder="修改后的线号"><br><br>

    <input type = "submit" value = "提交"class="btn btn-lg btn-primary btn-block">
</form>
</div>

</body>
</html>
