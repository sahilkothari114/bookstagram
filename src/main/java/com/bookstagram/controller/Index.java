/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bookstagram.controller;

import com.bookstagram.service.UserService;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sahil
 */
@WebServlet( urlPatterns="/bookstagram%20view/winkle/profile/Index", loadOnStartup=1)
public class Index extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private UserService us = new UserService();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getSession().getAttribute("loggedInUser") != null) {

            System.out.println("in Index controller - " + request.getSession().getAttribute("loggedInUser"));
//            User user = us.getUserById((ObjectId) request.getSession().getAttribute("loggedInUser"));
//            Gson gson = new Gson();
//            user.setPassword(null);
//            String jsonString = gson.toJson(user);
//            System.out.println("jsonString = " + jsonString);
//            request.setAttribute("user", jsonString);
//
//            //String jsonStringreq = IOUtils.toString(request.getInputStream(), BookstagramConstant.CHARACTER_ENCODING);
//            System.out.println(request.getAttribute("user"));
            RequestDispatcher dispatcher = request.getRequestDispatcher("index2.jsp");
            dispatcher.forward(request, response);
        }

        //response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
