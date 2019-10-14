package com.dinfree.javaweb.student;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "StudentServlet", urlPatterns = "/student")
public class StudentController extends HttpServlet {
	private StudentService studentService = new StudentService();
	 
    private void processRequest(
      HttpServletRequest request, HttpServletResponse response) 
      throws ServletException, IOException {
 
        String studentID = request.getParameter("id");
        if (studentID != null) {
            int id = Integer.parseInt(studentID);
            studentService.getStudent(id)
              .ifPresent(s -> request.setAttribute("student", s));
        }
 
        RequestDispatcher dispatcher = request.getRequestDispatcher("/basic/studentinfo.jsp");
        dispatcher.forward(request, response);
    }
 
    @Override
    protected void doGet(
      HttpServletRequest request, HttpServletResponse response) 
      throws ServletException, IOException {
 
        processRequest(request, response);
    }
 
    @Override
    protected void doPost(
      HttpServletRequest request, HttpServletResponse response) 
      throws ServletException, IOException {
 
        processRequest(request, response);
    }
}
