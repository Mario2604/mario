<%--
  Created by IntelliJ IDEA.
  User: mario
  Date: 2020/12/5
  Time: 17:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="index.jsp"><h2>返回首页</h2></a><br><br><br><br><br>
<a href="pricesuccess3.jsp"><h2>返回上一页</h2></a>
<div class="center-in-center"><h1 style="color: red"><p><b>数量:</b>

    <% String c = request.getParameter("shuliang");
        Integer d= Integer.valueOf(c);
        if (d<0){
            out.println("购票失败");
        }
        else {
            out.println("数量："+d);
            out.print("总价"+d*2+"元");
        }

    %>
</p>
</h1>
</div>

</body>
</html>