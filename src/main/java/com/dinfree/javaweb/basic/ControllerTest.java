package com.dinfree.javaweb.basic;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControllerTest
 */
@WebServlet("/ControllerTest")
public class ControllerTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerTest() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// set character set for Korean
		request.setCharacterEncoding("utf-8");
		
		// get output stream
		PrintWriter out = response.getWriter();
		
		// add data to request
		request.setAttribute("user", "Hong Gil Dong");
		request.setAttribute("products", Arrays.asList("Samsung Galaxy Note 10", "Apple Iphone 11", "LG G9"));
		
		// get dispatcher and forward
		RequestDispatcher dispatcher = request.getRequestDispatcher("/basic/viewTest.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
