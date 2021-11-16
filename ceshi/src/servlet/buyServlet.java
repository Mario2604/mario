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
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "buyServlet")
public class buyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("utf-8");
        response.setCharacterEncoding("utf-8");
        request.setCharacterEncoding("utf-8");
        List<subway> arr = new ArrayList<subway>();

        SubwayDAO md = new SubwayDaoImpo();
        arr = md.findAll();
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");

        request.setAttribute("arr",arr);
        request.getRequestDispatcher("/buy.jsp").forward(request,response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
