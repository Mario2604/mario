package servlet;

import DAO.SubwayDAO;
import DAO.SubwayDaoImpo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "insertServlet")
public class insertServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("utf-8");
        response.setCharacterEncoding("utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");
        int number = Integer.parseInt(request.getParameter("number"));
        String name = request.getParameter("name");
        name = new String(name.getBytes("ISO-8859-1"),"utf-8");

        String route = request.getParameter("route");
        route = new String(route.getBytes("ISO-8859-1"),"utf-8");
        SubwayDAO md = new SubwayDaoImpo();
        md.insert(number,name,route);

        request.getRequestDispatcher("initServlet").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
