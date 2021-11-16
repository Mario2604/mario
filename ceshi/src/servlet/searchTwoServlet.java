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

@WebServlet(name = "searchTwoServlet")
public class searchTwoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("utf-8");
        response.setCharacterEncoding("utf-8");
        request.setCharacterEncoding("utf-8");
        String name = request.getParameter("name");
        name = new String(name.getBytes("ISO-8859-1"), "utf-8");
        String name2 = request.getParameter("name2");
        name2 = new String(name2.getBytes("ISO-8859-1"), "utf-8");
        List<subway> arr = new ArrayList<subway>();


        SubwayDAO md = new SubwayDaoImpo();
        arr = md.findTwo(name, name2);
        request.setAttribute("arr", arr);
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");
        request.getRequestDispatcher("/buy.jsp").forward(request, response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
