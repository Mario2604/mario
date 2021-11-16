package servlet;

import DAO.SubwayDAO;
import DAO.SubwayDaoImpo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "delServlet")
public class delServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("number");
        name = new String(name.getBytes("ISO-8859-1"),"utf-8");
        SubwayDAO md = new SubwayDaoImpo();
        md.delete(name);
        request.getRequestDispatcher("/initServlet").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
