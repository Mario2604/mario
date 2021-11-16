package servlet;

import DAO.SubwayDAO;
import DAO.SubwayDaoImpo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "updateSubwayServlet")
public class updateSubwayServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int number = Integer.parseInt(request.getParameter("number"));
        String name = request.getParameter("name");
        name = new String(name.getBytes("ISO-8859-1"),"utf-8");

        String route = request.getParameter("route");

        SubwayDAO md = new SubwayDaoImpo();
        md.Update(number,name,route);

        response.sendRedirect("/initServlet");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
