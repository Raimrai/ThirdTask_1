package kz.bitlab.servlets;

import kz.bitlab.db.DBManager;
import kz.bitlab.db.Student;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

    @WebServlet(value = "/apply")
    public class ApplyServlet extends HttpServlet {
        protected void doGet(HttpServletRequest request, HttpServletResponse response){

        }
        protected void doPost (HttpServletRequest request,HttpServletResponse response) throws IOException {
            String name = request.getParameter("student_name");
            String surname = request.getParameter("student_surname");
            String birthday = request.getParameter("student_birthday");
            String city = request.getParameter("student_city");
            Student student = new Student();
            student.setName(name);
            student.setSurname(surname);
            student.setBirthday(birthday);
            student.setCity(city);
            DBManager.addStudent(student);
            response.sendRedirect("/home");
        }
}
