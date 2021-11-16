<%--
  Created by IntelliJ IDEA.
  User: mario
  Date: 2020/11/26
  Time: 10:11
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
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>首页</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body style="background-image:url(guang.jpg);background-position:center; background-repeat: no-repeat">

<div class="center-in-center">
    <form class="form-signin" action="/login" method="post" >
        <h1 style="color: yellowgreen" class="form-signin-heading">登录</h1>
        <input type="text"  name="userName" class="form-control" placeholder="用户名" required autofocus><br>
        <input type="password"  name="password" class="form-control" placeholder="密码" required><br>

        <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
    </form>
</div>

</body>
</html>
</html>