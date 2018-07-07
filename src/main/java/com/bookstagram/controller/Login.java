/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bookstagram.controller;

import com.bookstagram.DTO.User;
import com.bookstagram.service.LoginService;
import com.bookstagram.util.BookstagramConstant;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.io.IOUtils;

/**
 *
 * @author sahil
 */
@WebServlet("/bookstagram%20view/winkle/profile/Signin")
public class Login extends HttpServlet {



    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
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
        try {
            
            response.setContentType("text/plain");
            PrintWriter out = response.getWriter();
            
            String jsonString = IOUtils.toString(request.getInputStream(),
                    BookstagramConstant.CHARACTER_ENCODING);
            Gson gson = new GsonBuilder().setPrettyPrinting().create();
            //String json = gson.toJson(jsonString);
            
            System.out.println(jsonString + " response");
            User user = gson.fromJson(jsonString, User.class);
            LoginService loginService = new LoginService();
            User loggedInUser = loginService.login(user);
            if (loggedInUser != null) {
                System.out.println("user name" + loggedInUser.getUserName());
                request.getSession(true).setAttribute("loggedInUser", loggedInUser.getUserId());
                System.out.println("session - "+ request.getSession(true).getAttribute("loggedInUser"));
                out.write("True");
                
            } else {

                response.setStatus(400);
                out.print("Login Unsuccessful!");
                
            }
        } catch (NoSuchAlgorithmException | InvalidKeySpecException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
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
