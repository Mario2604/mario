<%--
  Created by IntelliJ IDEA.
  User: mario
  Date: 2020/11/26
  Time: 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript">
    /*---------- 动态获取系统当前日期方法start ------*/
    setInterval(
        "document.getElementById('sysDate').value=new Date().toLocaleString()+'  星期'+'日一二三四五六'.charAt(new Date().getDay());",
        1000);
    setInterval(
        "document.getElementById('sysSysDate').value=new Date().toLocaleString();",
        1000);

    /*---------- 动态获取系统当前日期方法end ------*/
</script>
<html>
<head>

  <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">




</head>
<style type="text/css">

  .center-in-center {
    position: absolute;
    top: 40%;
    left: 40%;
  }
  th,td{
    height: 40px;
    font-size: 20px;
    font-family:楷体;}
</style>

<body  background="timg.jpg">

<br>


<div class="center-in-center">

  <div class="page-header" >
 <h1 style="color: #99210b"> 欢迎使用地铁订票系统 </h1><br>
    <div>
 <p style="color: orange;" > <input id="sysDate" style="background: #0fe0ff;width: 250px;text-align: center;width: 350px;border-bottom-left-radius: 10px;border-bottom-right-radius: 10px;border-top-right-radius: 10px;border-top-left-radius: 10px;"    /> <br><br></p>
<a  class="btn btn-success btn-lg" role="button"  href="lo.jsp"input type="button" value="   管理员登录    ">   管理员登录    </a>
<a  class="btn btn-primary btn-lg" role="button"href="buyServlet"input type="button" value="       立即购票     ">       立即购票     </a>
<a  class="btn btn-danger btn-lg" role="button" href="map.jsp" input type="button" value="       查询线路     ">       查询线路     </a>
        <a href="http://baidu.com" target="_top">baidu</a>
</div>
  </div>
</div>

</body>
</html>
