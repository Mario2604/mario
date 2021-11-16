package l;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "/login")
public class login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1、处理servlet中的编码问题。
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");

        //2、获取login.jsp中的传递给的信息。
        String username=request.getParameter("userName");
        String password=request.getParameter("password");

        //3、在bean目录下创建一个用户的一个类将用户名和密码进行保存下来。


        //4、在service文件目录下创建UerService的接口以及实现类。

        //5、判断密码是否符合要求
        if(username.equals("lizhixi")&&password.equals("04182214")) {
            //符合要求则返回跳转到success.jsp
            request.getRequestDispatcher("initServlet").forward(request,response);
        }else{
            //不满足要求则返回error页面
            request.getRequestDispatcher("error.jsp").forward(request,response);
        }
//        System.out.println(user.getUserName()+"  "+user.getPassword());
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
