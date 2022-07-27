package kz.bitlab.servlets;

import kz.bitlab.db.DBManager;
import kz.bitlab.db.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;


@WebServlet(value = "/home")
    public class HomeServlet extends HttpServlet {
        @Override
        protected void doPost(HttpServletRequest request,
                              HttpServletResponse response) throws ServletException, IOException {
        }
        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            ArrayList<Student> students = DBManager.getAllStudents();
            request.setAttribute("any",students);
            request.getRequestDispatcher("/main.jsp").forward(request,response);
    }
}
