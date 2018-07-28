package com.bookstagram.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;

import com.bookstagram.DTO.User;
import com.bookstagram.service.SignupService;
import com.bookstagram.util.BookstagramConstant;
import com.bookstagram.util.PasswordHash;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Servlet implementation class Signup
 */
@WebServlet("/bookstagram%20view/winkle/profile/sign-up")
public class Signup extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SecurityException {

        String jsonString = IOUtils.toString(request.getInputStream(), BookstagramConstant.CHARACTER_ENCODING);
        //String jsonString ="{userName:'sahil',password:'123',email:'sahil@123'}";
        Gson gson = new GsonBuilder().setPrettyPrinting().create();

        User user = gson.fromJson(jsonString, User.class);

        try {
            user.setPassword(PasswordHash.createHash(user.getPassword()));
        } catch (NoSuchAlgorithmException | InvalidKeySpecException ex) {
            Logger.getLogger(Signup.class.getName()).log(Level.SEVERE, null, ex);
        }

        SignupService signupService = new SignupService();
        signupService.SignUp(user);

        request.getSession(true).setAttribute("loggedInUser", user.getUserId());
        System.out.println("session - " + request.getSession(true).getAttribute("loggedInUser"));
        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().write("True");

    }

}
