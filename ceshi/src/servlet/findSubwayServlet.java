package servlet;

import DAO.SubwayDAO;
import DAO.SubwayDaoImpo;
import entity.subway;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "findSubwayServlet")
public class findSubwayServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String number = request.getParameter("number");
        SubwayDAO md = new SubwayDaoImpo();
        subway z = md.findMessageById(Integer.parseInt(number));

        request.setAttribute("number",z);
        request.getRequestDispatcher("/update.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
