package com.bookstagram.controller;

import com.bookstagram.DTO.Shelf;
import com.bookstagram.service.ShelfService;
import com.bookstagram.service.UserService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.bson.types.ObjectId;

/**
 *
 * @author sahil
 */
@WebServlet("/bookstagram%20view/winkle/profile/addShelf")
public class AddShelf extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        LOG.info("AddShelf Called");
        String shelfName = request.getParameter("shelfName");
        ObjectId userId = (ObjectId) request.getSession(false).getAttribute("loggedInUser");
        Shelf shelf = new Shelf();
        shelf.setName(shelfName);
        shelf.setPersonal(true);
        UserService us = new UserService();
        us.addShelfInUser(userId, shelf);
                     RequestDispatcher rd = request.getRequestDispatcher("Index");
        rd.forward(request, response);

        
    }
    private static final Logger LOG = Logger.getLogger(AddShelf.class.getName());

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
