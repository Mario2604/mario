<%--
  Created by IntelliJ IDEA.
  User: mario
  Date: 2020/12/3
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style type="text/css">


    .center-in-center {
        position: absolute;
        top: 40%;
        left: 40%;
    }

</style>
<head>
    <title>票价</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>首页</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body background="timg.jpg">
<a href="index.jsp"style="color: orange"><h3>返回首页</h3></a><br><br><br><br>
<a href="buyServlet" style="color: orange"><h3>返回上一页</h3></a>
<div class="center-in-center" style="background: darkblue;width: 400px;border-bottom-left-radius: 10px;border-bottom-right-radius: 10px;border-top-right-radius: 10px;border-top-left-radius: 10px;">
    <h1 style="color: orange">票价为2元</h1>
    <form action="ticketsuccess.jsp" method="GET">
        <input type="text"  name="shuliang" class="form-control" placeholder="购买票数" onkeyup="value=value.replace(/^(0+)|[^\d]+/g,'')" required autofocus><br>

        <button class="btn btn-lg btn-warning btn-block" type="submit">提交</button>
</form>
</div>


</body>
</html>
