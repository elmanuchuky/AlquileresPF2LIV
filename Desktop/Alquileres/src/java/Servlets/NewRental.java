/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Controllers.RentalManager;
import Model.Client;
import Model.Rental;
import Model.Stall;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Acer
 */
public class NewRental extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet NewRental</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet NewRental at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

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
            
        String client = request.getParameter("client");
        String stall = request.getParameter("stall");
        String computersAmount = request.getParameter("computersAmount");
        String extraChairsAmount = request.getParameter("extraChairsAmount");
        String hasRoomAccess = request.getParameter("hasRoomAccess");
        
        boolean hasRoomAccessB = true;
        if (hasRoomAccess == null)
            hasRoomAccessB = false;

        Client c = new Client();
        c.setIdClient(Integer.parseInt(client));
        Stall s = new Stall();
        s.setIdStall(Integer.parseInt(stall));
        Rental rental = new Rental(c, s, Integer.parseInt(computersAmount), Integer.parseInt(extraChairsAmount), hasRoomAccessB);
        
        RentalManager rm = new RentalManager();
        boolean successful = rm.AddNewRental(rental);
         if(successful)
            getServletContext().getRequestDispatcher("/successful.jsp").forward(request, response);
        else
            response.sendRedirect("error.jsp");      
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
