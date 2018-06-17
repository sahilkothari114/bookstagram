package com.bookstagram.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookstagram.DTO.User;
import com.bookstagram.service.SignupService;

/**
 * Servlet implementation class Signup
 */
@WebServlet("/bookstagram%20view/winkle/profile/sign-up")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException,SecurityException {
		//response.setContentType("text/html");
		User user = new User();
		user.setUserName(request.getParameter("username"));
		user.setPassword(request.getParameter("password"));
		user.setEmail(request.getParameter("email"));
		SignupService signupService = new SignupService();
		signupService.SignUp(user);
		RequestDispatcher rd = request.getRequestDispatcher("index2.jsp")
		;
	}

}
