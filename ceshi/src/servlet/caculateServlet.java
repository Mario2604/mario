package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "caculateServlet")
public class caculateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");

        String number = request.getParameter("number");
        Integer b = Integer.parseInt(number);
        String number2 = request.getParameter("number2");
        Integer c = Integer.parseInt(number2);
        int e;

        e=c-b;
        if (e==0){
            request.getRequestDispatcher("buyServlet").forward(request, response);
        }
if (e<=3&&e>=-3){
    request.getRequestDispatcher("pricesuccess.jsp").forward(request, response);

}
else if (e<-3&&e>=-6||e>3&&e<=6){
    request.getRequestDispatcher("pricesuccess2.jsp").forward(request, response);
}
else if(e>6){
    request.getRequestDispatcher("pricesuccess3.jsp").forward(request, response);
}

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
